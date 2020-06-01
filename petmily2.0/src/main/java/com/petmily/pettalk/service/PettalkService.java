package com.petmily.pettalk.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.common.domain.CodeVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.SearchVO;

public interface PettalkService {

	
	public List<BoardVO> listBoard(SearchVO cmd);
	public List<CodeVO> listPettalkCode();
	
	public void insertBoard(BoardVO board);
	public BoardVO detailBoard(int seq);
	

	
	/*
	codeListService
	detailBoard
	insertReplyService
	listBoardService
	listNotiService
	listReplyService
	notiDeleteService
	reportListService
	reportService
*/
}
