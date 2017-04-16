package com.fitness.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fitness.entity.News;
import com.fitness.entity.Newscontent;
import com.fitness.entity.Newstype;
import com.fitness.service.NewsContentService;
import com.fitness.service.NewsService;
import com.fitness.service.NewstypeService;
import com.fitness.vo.NewsForm;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController{

	@Autowired
	private NewstypeService ntservice;
	
	@Autowired
	private NewsService newsservice;
	
	@Autowired
	private NewsContentService ntsevice;
	

	/**
	 * 查询所有新闻类型
	 * */
	@RequestMapping("/list_news")
	public String  queryall_news(Model model){
		List<News> allnews = newsservice.getAllNews2();
		model.addAttribute("allnews", allnews);//还可以用Map<String,Object> map发送值
		return "/jsp/book";
	}
	
	/** 
	 * 新闻详情
	 * URL:newsdetail/Nxxxx
	 * newsdetail/{newsId}.do 这样才能访问,a标签,ajax的url后面加.do
	 * @PathVariable("newsId")
	 * 
	 * */
	@RequestMapping(value="/newsdetail/{newsId}",method=RequestMethod.GET)
	public String newsdetail(@PathVariable("newsId") String newsId,Map<String,Object> map){
		News news = newsservice.getNewsBynewsId(newsId);
		Newscontent newscontent = ntsevice.getNewsContentById(newsId);
		map.put("newscontent", newscontent);
		map.put("news", news);
		return "/jsp/newsdetail";
	}
	
	
	/**
	 * 第二种请求方式
	 * */
	@RequestMapping(value="/newsdetail2",method=RequestMethod.GET)
	public String newsdetail2(@RequestParam("newsId") String newsId,Map<String,Object> map){
		News news = newsservice.getNewsBynewsId(newsId);
		Newscontent newscontent = ntsevice.getNewsContentById(newsId);
		map.put("newscontent", newscontent);
		map.put("news", news);
		return "/jsp/newsdetail";
	}
	/**
	 * 去添加界面
	 * 查询所有的新闻类型
	 * */
	@RequestMapping(value="to_newsadd")
	public String toAddNews(Map<String,Object> map){
		List<Newstype> allnewstype = ntservice.getAllnewstype();
		map.put("allnewstype", allnewstype);
		map.put("opname", session.getAttribute("opname"));
		return "/jsp/news_add";
	}
	
	/**
	 * 添加教程/保存修改的教程
	 * value加/和不加/好像都可以啊，我去
	 * */
	@RequestMapping(value="addnews",method=RequestMethod.POST)
	public String addnews(NewsForm newsform){
		String newscShuming = (String) session.getAttribute("opname");//卷稿人
		Integer newsOpcode =  (Integer)session.getAttribute("opcode");//session接受的字符串都带类型的。
		News news = new News();
		Date newsCreatetime = new Date();
		SimpleDateFormat fomat = new SimpleDateFormat("yyMMddHHmmss");
		String ndate = fomat.format(newsCreatetime);
		String newsId = "N"+ndate;
		news.setNewsId(newsId);
		news.setNewsCreatetime(newsCreatetime);
		news.setNewsOpcode(newsOpcode.toString());
		news.setNewsTitle(newsform.getNews_title());
		news.setNewsType(newsform.getNttype());
		newsservice.insertnews(news);
		
		Newscontent newscontent = new Newscontent();
		newscontent.setNewscId(newsId);
		newscontent.setNewscHotline(newsform.getNewscHotline());
		newscontent.setNewscPhone(newsform.getNewscPhone());
		newscontent.setNewscShuming(newscShuming);
		newscontent.setNewscContent(newsform.getNtcontent());
		
		ntsevice.insertNewsContent(newscontent);
		return "redirect:/news/list_news.do";
	}
	
	
	
	/**
	 * 修改教程
	 * */
	@RequestMapping(value="editnews")
	public ModelAndView toEditnews(@RequestParam("newsId") String newsId){
		ModelAndView mv = new ModelAndView();
		//String newsId  = request.getParameter("newsId");
		News news = newsservice.getNewsBynewsId(newsId);
		
		Newscontent newscontent = ntsevice.getNewsContentById(newsId);
		mv.addObject("newscontent", newscontent);
		mv.addObject("news", news);
		
		List<Newstype> allnewstype = ntservice.getAllnewstype();
		mv.addObject("allnewstype", allnewstype);
		
		session.setAttribute("newscontent", newscontent);
		session.setAttribute("news", news);
		mv.setViewName("/jsp/news_edit");
		return mv;
		
	}
	
	/**
	 * 修改教程
	 * */
	@RequestMapping(value="saveeditnews",method=RequestMethod.POST)
	public String saveEditnews(){
		String newsname = request.getParameter("news_title");//form提交可以用request去参数，也可以用vo取参数
		String newstype = request.getParameter("nttype");
		String content = request.getParameter("ntcontent");
		String newscPhone = request.getParameter("newscPhone");
		String newscHotline = request.getParameter("newscHotline");
		String opname = (String) session.getAttribute("opname");
		
		News news = (News) session.getAttribute("news");
		news.setNewsTitle(newsname);
		news.setNewsType(newstype);
		newsservice.updateNews(news);
		Newscontent newscontent = (Newscontent) session.getAttribute("newscontent");
		newscontent.setNewscContent(content);
		newscontent.setNewscPhone(newscPhone);
		newscontent.setNewscHotline(newscHotline);
		newscontent.setNewscShuming(opname);

		return "redirect:/news/list_news.do";
	}
	
	
	/**
	 * 删除教程可以的。
	 * */
	@RequestMapping(value="/deletenews/{newsId}")
	public ModelAndView deleteNews(@PathVariable("newsId") String newsId){
		ModelAndView mv = new ModelAndView();
		newsservice.deleteNews(newsId);
		mv.setViewName("redirect:/news/list_news.do");//
		return mv;
	}
	
	public void setSaveNews(){
		
	}
	
	
}
