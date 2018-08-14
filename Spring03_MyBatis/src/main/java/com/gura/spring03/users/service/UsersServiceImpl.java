package com.gura.spring03.users.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring03.users.dao.UsersDao;
import com.gura.spring03.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{

	
	//의존객체 DI
	@Autowired
	private UsersDao dao;
	
	@Override
	public boolean canUseId(String id) {
		//인자로 전달된 아이디의 사용 가능 여부를 리턴해 준다.
		return dao.canUseId(id);
	}

	@Override
	public void signup(ModelAndView mView, UsersDto dto) {
		//비밀번호 암호화를 도와주는 객체 생성
		BCryptPasswordEncoder encoder=
				new BCryptPasswordEncoder();
		//UsersDto 에 있는 비밀번호를 암호화 한다.
		String encodedPwd=encoder.encode(dto.getPwd());
		//암호화된 비밀번호를 UsersDto에 다시 담는다.
		dto.setPwd(encodedPwd);
		//dao를 이용해서 회원 정보를 저장한다.
		dao.insert(dto);
		//request에 담을 내용을 ModelAndView 객체에 담는다.
		mView.addObject("msg", dto.getId()+"회원님 가입되었습니다");
		
	}
	
	//로그인 관련 처리를 하는 서비스 메소드
	@Override
	public void login(ModelAndView mView, UsersDto dto, HttpSession session) {
		//로그인 성공여부를 담을 지역 변수
		boolean isLoginSuccess=false;
		//인자로 전달된 Dto에 있는 회원의 아이디를 이용해서
		//select 한다.
		UsersDto resultDto=dao.getData(dto.getId());
		//해당 아이디가 DB에 존재한다면 
		if(resultDto != null) {
			//사용자가 입력한 비밀번호와 DB에 저장된 암호화된 비밀번호
			//비교해서 일치하는지 판단해야 한다.
			isLoginSuccess=
			BCrypt.checkpw(dto.getPwd(), resultDto.getPwd());
		}
		if(isLoginSuccess) {
			//로그인 처리를 해준다.
			session.setAttribute("id", dto.getId());
		}
		//request에 담을 내용을 ModelAndView 객체에 담는다.
		mView.addObject("isLoginSuccess", isLoginSuccess);
		
	}

	@Override
	public void info(ModelAndView mView, HttpSession session) {
		//세션에 저장된 아이디를 읽어와서
		String id=(String)session.getAttribute("id");
		//해당 회원의 정보를 얻어와
		UsersDto dto=dao.getData(id);
		//ModelAndView 객체에 담는다.(request 에 담는 작업 대신)
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
		
		//DB에 수정 반영한다.
		dao.update(dto);
		
	}

	//인자로 전달된 비밀번호가 맞는 비밀번호인지 여부를 리턴하는 서비스 메소드
	@Override
	public boolean checkPwd(String inputPwd, HttpSession session) {
		//세션영역에 저장된 아이디를 읽어와서
		String id=(String)session.getAttribute("id");
		//DB에서 해당 정보를 얻어와서
		UsersDto dto=dao.getData(id);
		//일치하는지 여부를
		boolean isChecked=BCrypt.checkpw(inputPwd, dto.getPwd());
		//리턴하기
		return isChecked;
	}

}
