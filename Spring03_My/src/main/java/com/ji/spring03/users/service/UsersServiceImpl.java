package com.ji.spring03.users.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.ji.spring03.users.dao.UsersDao;
import com.ji.spring03.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	private UsersDao dao;
	
	@Override
	public boolean canUseId(String id) {
		return dao.canUseId(id);
	}

	@Override
	public void signup(ModelAndView mView, UsersDto dto) {
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		String encodedPwd=encoder.encode(dto.getPwd());
		dto.setPwd(encodedPwd);
		dao.insert(dto);
		mView.addObject("msg", dto.getId()+"회원님 가입되었습니다.");
		
	}

	@Override
	public void login(ModelAndView mView, UsersDto dto, HttpSession session) {
		boolean isLoginSuccess=false;
		UsersDto resultDto=dao.getData(dto.getId());
		if(resultDto !=null) {
			isLoginSuccess=
					BCrypt.checkpw(dto.getPwd(), resultDto.getPwd());
		}
		if(isLoginSuccess) {
			session.setAttribute("id", dto.getId());
		}
		mView.addObject("isLoginSuccess", isLoginSuccess );
		
		
	}
	
	@Override
	public void info(ModelAndView mView, HttpSession session) {
		String id=(String)session.getAttribute("id");
		UsersDto dto=dao.getData(id);
		mView.addObject("dto",dto);
		
	}

	@Override
	public void updateForm(ModelAndView mView, HttpSession session) {
		String id=(String)session.getAttribute("id");
		UsersDto dto=dao.getData(id);
		mView.addObject("dto",dto);
	}

	@Override
	public void update(UsersDto dto) {
		dao.update(dto);
		
	}

	@Override
	public boolean isValidPwd(String inputPwd, HttpSession session) {
		String id=(String)session.getAttribute("id");
		UsersDto dto=dao.getData(id);
		boolean isValid=BCrypt.checkpw(inputPwd, dto.getPwd());
		return isValid;
	}

	@Override
	public void updatePwd(String pwd, HttpSession session) {
		String id=(String)session.getAttribute("id");
		String encodedPwd=new BCryptPasswordEncoder().encode(pwd);
		UsersDto dto=new UsersDto();
		dto.setId(id);
		dto.setPwd(encodedPwd);
		dao.update(dto);
		
	}

	

}
