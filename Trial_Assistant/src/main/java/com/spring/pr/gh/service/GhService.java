package com.spring.pr.gh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.pr.command.GhVO;
import com.spring.pr.command.TsVO;
import com.spring.pr.gh.mapper.IGhMapper;

@Service
public class GhService implements IGhService {

	@Autowired IGhMapper mapper;

	@Override
	public void regist(GhVO gh) {
		mapper.regist(gh);
	}

}
