package com.ji.spring03.users.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ji.spring03.users.dto.UsersDto;
import com.ji.spring03.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	@RequestMapping("/users/loginform")
	public ModelAndView loginForm(@RequestParam String url,
			HttpServletRequest request) {
		//만일 전달되지 않았으면
		if(url==null) {
			//인덱스로 이동할 수 있도록
			url=request.getContextPath()+"/";
		}
		ModelAndView mView=new ModelAndView();
		mView.addObject("url", url);
		mView.setViewName("users/loginform");
		
		return mView;
	}
	
	@RequestMapping("/users/login")
	public ModelAndView login(@ModelAttribute UsersDto dto,
			HttpSession session, @RequestParam String url) {
		ModelAndView mView=new ModelAndView();
		service.login(mView, dto, session);
		
		mView.addObject("url", url);
		mView.setViewName("users/login");
		
		return mView;
	}
	
	
	@RequestMapping("/users/signup_form")
	public String signupForm() {
		return "users/signup_form";
	}
	
	@RequestMapping("users/signup")
	public ModelAndView signup(@ModelAttribute UsersDto dto) {
		ModelAndView mView=new ModelAndView();
		service.signup(mView, dto);
		mView.setViewName("users/signup");
		return mView;
	}
	
	
	
	
}
