package com.onair.proj.admin.model;

public interface AdminService {
	int adminInsert(AdminVO vo);
	int adminLogin(String manId, String manPwd);
}
