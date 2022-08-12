package com.spring.pr.notice.mapper;

import java.util.List;

import com.spring.pr.command.NoticeVO;

public interface INoticeMapper {

	// 글 등록 
	void regist(NoticeVO notice);
	
	// 글 목록
	List<NoticeVO> getList();
	
	// 총 게시물 수 
	int getTotal();
	
	// 상세보기 
	NoticeVO getContent(int NoticeNum);
	
	// 수정 
	void update(NoticeVO notice);
	
	// 삭제 
	void delete(int NoticeNum);
}
