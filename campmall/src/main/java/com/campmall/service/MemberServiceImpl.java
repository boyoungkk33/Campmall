package com.campmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campmall.dao.CpmMemberDAO;
import com.campmall.vo.CpmMemberVO;
import com.campmall.vo.SessionVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private CpmMemberDAO memberDao;
	
	/**
	 * 회원가입
	 */
	@Override
	public int getJoinResult(CpmMemberVO vo) {	
		return memberDao.insert(vo);
	}
	
	/**
	 * 로그인
	 */
	@Override
	public SessionVO getLoginResult(CpmMemberVO vo) {	
		return memberDao.select(vo);		
	}

}
