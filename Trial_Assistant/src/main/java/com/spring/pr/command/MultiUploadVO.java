package com.spring.pr.command;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MultiUploadVO {
	private List<UploadVO> fileList; // UploadVO객체들이 있는 list 선언
	
}