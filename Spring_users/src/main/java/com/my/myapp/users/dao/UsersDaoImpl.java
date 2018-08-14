package com.my.myapp.users.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.myapp.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(UsersDto dto) {
		session.selectOne("users.insert", dto);
		
	}

	@Override
	public void update(UsersDto dto) {
		session.selectOne("users.update", dto);
		
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UsersDto getData(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UsersDto> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
