package com.my.myapp.users.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.my.myapp.users.dao.UsersDao;
import com.my.myapp.users.dto.UsersDto;
/*
 *  회원 정보에 관련된 비지니스 로직을 수행하는 서비스 
 */
//단순히 Service 붙이는것으로 bean 되지 않음 ! component-scan 이 일어나야한다. (servlet-context.xml 에 명시)
@Service
public class UsersServiceImpl implements UsersService {
   //의존 객쳉 주입 
   @Autowired
   private UsersDao dao;
   
   
   
   @Override
   public void list(ModelAndView mView) {
      //Dao 객체를 이용해서 회원 목록을 얻어오고 
      List<UsersDto> list = dao.getList();
      // 인자로 전달된 ModelAndView 객체에 담는다. 
      mView.addObject("list",list);
      
   }

   @Override
   public void insert(UsersDto dto) {
      dao.insert(dto);
      
   }

   @Override
   public void update(UsersDto dto) {
      dao.update(dto);
      
   }

   @Override
   public void delete(int num) {
      dao.delete(num);
      
   }

   @Override
   public void getData(ModelAndView mView, int num) {
	 UsersDto dto=dao.getData(num);
	 mView.addObject("dao", dao);
	 
	
      
   }


}