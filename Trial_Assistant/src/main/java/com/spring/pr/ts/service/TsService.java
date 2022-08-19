package com.spring.pr.ts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pr.command.TsVO;
import com.spring.pr.ts.mapper.ITsMapper;

@Service
public class TsService implements ITsService {
	
	@Autowired
	private ITsMapper mapper;

	@Override
	public void regist(TsVO ts) {
		mapper.regist(ts);
		

	}

}
