package com.my.myapp.users.dao;

import java.util.List;

import com.my.myapp.users.dto.UsersDto;


public interface UsersDao {
	public void insert(UsersDto dto);
	public void update(UsersDto dto);
	public void delete(int num);
	public UsersDto getData(int num);
	public List<UsersDto> getList();
}
