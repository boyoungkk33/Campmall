package com.campmall.service;

import java.util.ArrayList;

import com.campmall.vo.CpmProductVO;

public interface ProductService {

	int getSaveResult(CpmProductVO vo);
	ArrayList<CpmProductVO> getList();
	ArrayList<CpmProductVO> getList(String event);
	ArrayList<CpmProductVO> getDetailList(CpmProductVO vo);
	CpmProductVO getContent(String pid);
	int getUpdate(CpmProductVO vo);	
	int getDelete(String bid);
}
