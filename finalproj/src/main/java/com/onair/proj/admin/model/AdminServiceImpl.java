package com.onair.proj.admin.model;

import org.springframework.stereotype.Service;

import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{
	
	private final AdminDAO adminDao;
	
	@Override
	public int adminInsert(AdminVO vo) {
		return adminDao.adminInsert(vo);
	}

	@Override
	public int totalMember(MemberVO vo) {
		return adminDao.totalMember(vo);
	}

	@Override
	public int totalboard3(VocVO vo) {
		return adminDao.totalboard3(vo);
	}
	
	public int adminLogin(String manId, String manPwd) {
		String dbPwd= adminDao.adminSelectPwd(manId);
		int result=0;
		if(dbPwd !=null && !dbPwd.isEmpty()) {
			if(dbPwd.equals(manPwd)) {
				result=MemberService.LOGIN_OK;
			}else {
				result=MemberService.DISAGREE_PWD;
			}
		}else {
			result=MemberService.NONE_USERID;
		}
		return result;
	}

}
