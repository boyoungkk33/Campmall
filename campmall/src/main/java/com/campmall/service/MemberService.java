package com.campmall.service;

import com.campmall.vo.CpmMemberVO;
import com.campmall.vo.SessionVO;

public interface MemberService {

	int getJoinResult(CpmMemberVO vo);
	SessionVO getLoginResult(CpmMemberVO vo);
}
