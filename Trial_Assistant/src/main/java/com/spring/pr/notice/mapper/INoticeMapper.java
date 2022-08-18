package com.spring.pr.notice.mapper;

import java.util.List;

import com.spring.pr.command.NoticeVO;
import com.spring.pr.util.PageVO;

public interface INoticeMapper {

	// 글 등록 
	void regist(NoticeVO notice);
	
	// 글 목록
	List<NoticeVO> getList(PageVO page);
	
	// 총 게시물 수 
	int getTotal(PageVO page);
	
	// 상세보기 
	NoticeVO getContent(int NoticeNum);
	
	// 수정 
	void update(NoticeVO notice);
	
	// 삭제 
	void delete(int NoticeNum);
	
	// 조회수 증가 
	void upHit(int FaqNum);
}
