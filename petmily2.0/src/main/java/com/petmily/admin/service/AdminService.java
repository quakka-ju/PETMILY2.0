package com.petmily.admin.service;


import java.util.List;

import com.petmily.admin.domain.StatisticsVO;
import com.petmily.common.domain.CodeVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;

public interface AdminService {


	public List<ReportVO> reportList();
	public void reportCommit(int rptNo);
	public void reportReject(int rptNo);
	public List<CodeVO> codeList();
	public List<CodeVO> codeDetailList(int codeType);
	public void codeInsert(CodeVO codeVO);
	public List<MemberVO> adminMemberList(SearchVO searchVO);
	public List<CodeVO> adminCodeList();
	public void memberCodeUpdate (MemberVO memberVO);
	public List<StatisticsVO> memberTotalData();
	
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
