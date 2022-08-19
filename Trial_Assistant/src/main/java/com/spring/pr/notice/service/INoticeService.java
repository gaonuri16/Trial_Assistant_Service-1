package com.spring.pr.notice.service;

import java.util.List;

import com.spring.pr.command.NoticeVO;

public interface INoticeService {
	
	// 글 등록 
	void regist(NoticeVO board);
	
	// 글 목록
	List<NoticeVO> getList();
	
	// 총 게시물 수 
	int getTotal();
	
	// 상세보기 
	NoticeVO getContent(int bno);
	
	// 수정 
	void update(NoticeVO board);
	
	// 삭제 
	void delete(int bno);

}
