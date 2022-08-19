package com.spring.pr.apply.mapper;

import java.util.List;

import com.spring.pr.command.AncmtVO;

public interface IApplyMapper {
	
	List<AncmtVO> getList();
	
	void regist(AncmtVO vo);
	
	int idCheck(String id);

}
