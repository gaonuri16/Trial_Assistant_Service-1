package com.spring.pr.answer.mapper;

import java.util.List;

import com.spring.pr.command.AnswerVO;

public interface IAnswerMapper {

	// 글 등록 
	void regist(AnswerVO answer);
	
	// 글 목록
	List<AnswerVO> getList();
	
	// 총 게시물 수 
	int getTotal();
	
	// 상세보기 
	AnswerVO getContent(int AnsNum);
	
	// 수정 
	void update(AnswerVO answer);
	
	// 삭제 
	void delete(int AnsNum);
	
	// 조회수 증가 
	void upHit(int AnsNum);
}
