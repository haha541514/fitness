package com.fitness.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fitness.entity.BBS;
import com.fitness.service.BbService;




@Controller
@RequestMapping("/bbs")
public class BBSController extends BaseController{

	@Autowired
	public BbService bbsservice;
	
	/**
	 * 查询所有论坛帖子
	 * */
	@RequestMapping(value="/bbs_list")
	public String getAllbbs(Model model){
		
		List<BBS> allBBS = bbsservice.getAllBBS();
		model.addAttribute("allBBS", allBBS);
		return "/jsp/bbs_publish";
	}
	

	/**
	 * 查询单个帖子
	 * */
	@RequestMapping(value="/bbs_edit")
	public String getbbsByid(@RequestParam("bbsid") String bbsid,Model model){
		BBS bbs = bbsservice.getBBSBybbsid(Integer.valueOf(bbsid));
		model.addAttribute("bbs", bbs);
		return "/jsp/bbs_edit";
	}
	
	
	
	/**
	 * 发表帖子
	 * */
	@RequestMapping(value="/bbs_")
	public String addbbs(@RequestParam("bbsid") String bbsid,Model model){
		BBS bbs = bbsservice.getBBSBybbsid(Integer.valueOf(bbsid));
		model.addAttribute("bbs", bbs);
		return "/jsp/bbs_edit";
	}
	/**
	 * 删除帖子,并删除回帖
	 * */
	@RequestMapping(value="/bbs_")
	public String deletebbsbyid(@RequestParam("bbsid") String bbsid,Model model){
		BBS bbs = bbsservice.getBBSBybbsid(Integer.valueOf(bbsid));
		model.addAttribute("bbs", bbs);
		return "/jsp/bbs_edit";
	}
	
	
	/**
	 * 回帖
	 * */
	@RequestMapping(value="/bbs_answer")
	public String addbbsAnswer(@RequestParam("bbsid") String bbsid,Model model){
		BBS bbs = bbsservice.getBBSBybbsid(Integer.valueOf(bbsid));
		model.addAttribute("bbs", bbs);
		return "/jsp/bbs_edit";
	}
	

	/**
	 * 删除回帖
	 * */ 
	@RequestMapping(value="/delete_bbs_answer")
	public String deletebbsAnswer(@RequestParam("bbsid") String bbsid,Model model){
		BBS bbs = bbsservice.getBBSBybbsid(Integer.valueOf(bbsid));
		model.addAttribute("bbs", bbs);
		return "/jsp/bbs_edit";
	}
	
	
	
	
	
}
