package com.spring.pr.instt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pr.command.InsttVO;
import com.spring.pr.instt.mapper.IInsttMapper;

@Service
public class InsttService implements IInsttService {
	
	@Autowired
	IInsttMapper mapper;
	
	@Override
	public void regist(InsttVO vo) {
		mapper.regist(vo);
	}

}
