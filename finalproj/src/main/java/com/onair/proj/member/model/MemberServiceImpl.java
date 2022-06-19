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

}
