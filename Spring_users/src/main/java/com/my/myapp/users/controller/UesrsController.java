package com.my.myapp.users.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.my.myapp.users.dto.UsersDto;
import com.my.myapp.users.service.UsersService;

@Controller
public class UesrsController {
	
	@Autowired
	private UsersService uService;
	
	@RequestMapping("/users/loginform")
	public String logonForm() {
		
		return "users/loginform";
				
	}
	
	@RequestMapping("/users/signupform")
	public String signupForm() {
		
		return "users/signupform";
				
	}
	
	@RequestMapping("/signup")
	public String signUp(@ModelAttribute UsersDto dto) {
		
		uService.insert(dto);
		
		return "redirect:/home.do";
		
				
	}
	
	@RequestMapping("/login")
	//세션에 있는 데이터와 input한 데이터가 맞지 않으면 다시 하라고 알림
	public String logIn(@ModelAttribute UsersDto dto ) {
		ModelAndView mView=new ModelAndView();
		mView.addObject(dto);
		
		if(dto==null) {
			
		}
		
		return "redirect:/home.do";
				
	}
}
