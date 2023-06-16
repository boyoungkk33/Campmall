package com.campmall.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.campmall.vo.CpmMemberVO;
import com.campmall.vo.SessionVO;

@Repository
public class CpmMemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert
	 */
	public int insert(CpmMemberVO vo) {
		return sqlSession.insert("mapper.member.join", vo);
	}//insert-end
	
	/**
	 * select
	 */
	public SessionVO select(CpmMemberVO vo) {
		return sqlSession.selectOne("mapper.member.login",vo);
	}
}
