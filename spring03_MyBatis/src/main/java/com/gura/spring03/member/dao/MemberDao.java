package com.gura.spring03.member.dao;

import java.util.List;

import com.gura.spring03.member.dto.MemberDto;

public interface MemberDao {
   // MemberDao의 interface 명이 MemberDao!
   public void insert(MemberDto dto);
   public void update(MemberDto dto);
   public void delete(int num);
   public MemberDto getData(int num);
   public List<MemberDto> getList();
}