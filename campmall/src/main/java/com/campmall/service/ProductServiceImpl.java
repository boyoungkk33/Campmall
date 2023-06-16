package com.campmall.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campmall.dao.CpmProductDAO;
import com.campmall.vo.CpmProductVO;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private CpmProductDAO productDao;

	/* 상품등록 */
	@Override
	public int getSaveResult(CpmProductVO vo) {	
		return productDao.insert(vo);
	}
	
	/* 상품목록 불러오기*/
	@Override
	public ArrayList<CpmProductVO> getList(){
		ArrayList<CpmProductVO> list = productDao.select();
		return list;
	}
	
	/* 특정 카테고리 상품목록 불러오기*/
	@Override
	public ArrayList<CpmProductVO> getList(String event){
		ArrayList<CpmProductVO> list = productDao.selectList(event);
		return list;
	}
	
	/* 세부 목록 출력*/
	@Override
	public ArrayList<CpmProductVO> getDetailList(CpmProductVO vo){
		ArrayList<CpmProductVO> list = productDao.detailList(vo);
		return list;
	}
	
	/* 상품 상세정보 불러오기 */
	@Override
	public CpmProductVO getContent(String pid) {
		return productDao.select(pid);
	}
	
	/* 상품 수정 */
	@Override
	public int getUpdate(CpmProductVO vo) {
		return productDao.update(vo);
	}
	
	/* 상품 삭제 */
	@Override
	public int getDelete(String pid) {
		return productDao.delete(pid);
	}
}
