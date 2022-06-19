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

}
