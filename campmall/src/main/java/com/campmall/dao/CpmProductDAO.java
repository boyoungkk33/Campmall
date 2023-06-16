package com.campmall.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.campmall.vo.CpmProductVO;

@Repository
public class CpmProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert
	 */
	public int insert(CpmProductVO vo) {
		return sqlSession.insert("mapper.product.join", vo);
	}//insert-end
	
	/**
	 * select : list 불러오기
	 */
	public ArrayList<CpmProductVO> select(){
		
		List<CpmProductVO> list = sqlSession.selectList("mapper.product.list");
		
		return (ArrayList<CpmProductVO>)list;
	}
	
	/**
	 * selectList : 특정 카테고리 list 불러오기
	 */
	public ArrayList<CpmProductVO> selectList(String category){
		
		List<CpmProductVO> list = sqlSession.selectList("mapper.product.selectList", category);
		
		return (ArrayList<CpmProductVO>)list;
	}
	
	/**
	 * detailList : 
	 */
	public ArrayList<CpmProductVO> detailList(CpmProductVO vo){
		
		List<CpmProductVO> list = sqlSession.selectList("mapper.product.detailList", vo);
		
		return (ArrayList<CpmProductVO>)list;
	}
	
	/**
	 * select : 상세정보 가져오기
	 */
	public CpmProductVO select(String pid) {
		return sqlSession.selectOne("mapper.product.content", pid);
	}
	
	/**
	 * update : 상품수정 
	 */
	public int update(CpmProductVO vo) {		
		return sqlSession.update("mapper.product.update",vo);
	}
	
	/**
	 * delete : 상품삭제
	 */
	public int delete(String pid) {
		return sqlSession.delete("mapper.product.delete",pid);
	}
	
}
