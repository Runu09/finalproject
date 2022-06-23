package com.onair.proj.admin.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {
	int adminInsert(AdminVO vo);
	String adminSelectPwd(String manId);
}
