package com.spring.pr.apply.service;

import java.util.List;

import com.spring.pr.command.AncmtVO;

public interface IApplyService {
	
	List<AncmtVO> getList(AncmtVO vo);
	
	void regist(AncmtVO vo);
	
	int idCheck(String id);

}
