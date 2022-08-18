package com.spring.pr.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageVO {
	
	private int pageNum; 
	private int cpp; 
	private String keyword; 
	private String condition;
}
