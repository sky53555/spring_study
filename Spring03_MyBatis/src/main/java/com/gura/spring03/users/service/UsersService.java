package com.gura.spring03.users.service;

import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring03.users.dto.UsersDto;

public interface UsersService {
	
	public boolean canUseId(String id);
	public void signup(ModelAndView mView, UsersDto dto);
	public void login(ModelAndView mView, UsersDto dto, HttpSession session);
	public void info(ModelAndView mView, HttpSession session);
	public void updateForm(ModelAndView mView, HttpSession session);
	public void update(UsersDto dto);
	public boolean checkPwd(String inputPwd, HttpSession session);
}
