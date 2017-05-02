package com.fitness.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fitness.entity.Operator;
import com.fitness.service.UserService;
import com.fitness.vo.UserForm;

@Controller
@RequestMapping("/userController")
public class LoginController extends BaseController{

	@Autowired
	private UserService userService;
	/*@ResponseBody此注解不能省略 否则ajax无法接受返回值 
	 * */
	
	@RequestMapping(value="/userlogin",method = RequestMethod.POST)
	@ResponseBody
	public void Login() throws IOException{
		/*
		 * 不设置methopost和get方式都可传值,除了request之外，Login(String username,String userpssword)
		 * 也可以接受到入参，不用request取*/
		String username = request.getParameter("username");
		String userpssword = request.getParameter("userpssword");
		Operator op = userService.getById(Integer.valueOf(username));
		if(op.getOpPass().equals(userpssword)){//登陆成功
			setSession(op);
			response.getWriter().print("1");
		}else{
			response.getWriter().print("0");
		}
		response.getWriter().flush();
		return;
	}
	
	@RequestMapping(value="/userlogining")
	public String userloginng(Model model){

		return "index";
	}
	
	@RequestMapping(value="loginout")
	public String loginout(){
			//清除session
			Enumeration<String> em  = request.getSession().getAttributeNames();
			while(em.hasMoreElements()){
				request.getSession().removeAttribute(em.nextElement().toString());
			}
			request.getSession().invalidate();//invalidate(),注销  调用该方法 会清空所有已定义的session
		
		return "index";
	}
	
	
	
	
	/**
	 * 注册成功后跳转到登录界面
	 * @throws IOException 
	 * */
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String register(UserForm userform) throws IOException{
		Operator record = new Operator();
		String username = userform.getUsername();
		String userpssword = userform.getUserpssword();
		String user_qq_number = userform.getUser_qq_number();
		record.setOpName(username);
		record.setOpPass(userpssword);
		record.setOpQqnum(user_qq_number);
		record.setOpRole(9001);
		userService.saveOperator(record);
		
		Operator op = userService.getByQQnum(user_qq_number);
		setSession(op);
		//return "redirect:/userlogining.do";
		return "index";
	}
	

	
	
	@RequestMapping("/showUser/{id}")
	public String showUser(@PathVariable Integer id,Model model) {
		Operator u = userService.getById(id);
		request.setAttribute("user", u);
		model.addAttribute("user", u);
		return "showUser";//jsp名，showUser.jsp
	}
	
	public void setSession(Operator operator) throws IOException{
		HttpSession session = request.getSession();
		session.setAttribute("operator", operator);
		session.setAttribute("opname", operator.getOpName());
		session.setAttribute("opcode", operator.getOpCode());
	}
	

	
	
	
}
