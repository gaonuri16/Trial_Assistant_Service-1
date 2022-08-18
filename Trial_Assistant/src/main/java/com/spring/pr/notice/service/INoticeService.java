package com.spring.pr.notice.service;

import java.util.List;

import com.spring.pr.command.NoticeVO;
import com.spring.pr.util.PageVO;

public interface INoticeService {
	
	// 글 등록 
	void regist(NoticeVO board);
	
	// 글 목록
	List<NoticeVO> getList(PageVO page);
	
	// 총 게시물 수 
	int getTotal(PageVO page);
	
	// 상세보기 
	NoticeVO getContent(int bno);
	
	// 수정 
	void update(NoticeVO board);
	
	// 삭제 
	void delete(int bno);
	
	// 조회수 증가 
	void upHit(int bno);

}
