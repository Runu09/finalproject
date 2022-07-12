package com.onair.proj.member.model;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

	private final MemberDAO memberDao;

	@Override
	public int memberInsert(MemberVO vo) {
		return memberDao.memberInsert(vo);
	}

	@Override
	public int duplicateId(String memId) {
		int count=memberDao.duplicateId(memId);

		int result=0;
		if(count>0) {  //이미 존재 => 사용불가
			result=MemberService.UNUSABLE_ID;
		}else { //사용가능
			result=MemberService.USABLE_ID;			
		}

		return result;
	}

	@Override
	public int checkLogin(String memId, String memPwd) {
		String dbPwd = memberDao.selectPwd(memId);
		
		int result=0;
		if(dbPwd !=null && !dbPwd.isEmpty()) {
			if(dbPwd.equals(memPwd)) {
				result=MemberService.LOGIN_OK;
			}else {
				result=MemberService.DISAGREE_PWD;				
			}
		}else {
			result=MemberService.NONE_USERID;
		}
		
		return result;
	}

	@Override
	public MemberVO selectByMemId(String memId) {
		return memberDao.selectByMemId(memId);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return memberDao.memberUpdate(vo);
	}

	@Override
	public int memberDelete(String memId) {
		return memberDao.memberDelete(memId);
	}

	@Override
	public int pwdChange(String memId, String memPwd) {
		return memberDao.pwdChange(memId,memPwd);
	}

	@Override
	public String findId(String name, String email) {
		return memberDao.findId(name,email);
	}

	@Override
	public int updateMileageM(int mMileage, String memId) {
		return memberDao.updateMileageM(mMileage, memId);
	}

	@Override
	public int updateMileageP(int total, String memId) {
		return memberDao.updateMileageP(total, memId);
	}


	
}
