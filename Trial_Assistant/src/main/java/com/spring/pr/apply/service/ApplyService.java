package com.spring.pr.apply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pr.apply.mapper.IApplyMapper;
import com.spring.pr.command.AncmtVO;

@Service
public class ApplyService implements IApplyService {
	
	@Autowired
	IApplyMapper mapper;
	
	@Override
	public List<AncmtVO> getList(AncmtVO vo) {
		return mapper.getList();
	}
	
	@Override
	public void regist(AncmtVO vo) {
		mapper.regist(vo);
	}
	
	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}
}
