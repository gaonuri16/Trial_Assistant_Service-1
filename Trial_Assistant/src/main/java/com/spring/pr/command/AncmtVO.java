package com.spring.pr.command;

import java.sql.Timestamp;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class AncmtVO {

	/*
	CREATE TABLE Announcement (
		      anm_no_seq NUMBER(10), 
		      anm_upload_date DATE  DEFAULT sysdate NOT NULL, 
		      anm_title VARCHAR2(100) NOT NULL, 
		      anm_content VARCHAR2(1000) NOT NULL, 
		      anm_file_loca VARCHAR2(100) NOT NULL, 
		      anm_view_cnt NUMBER  DEFAULT 0 , 
		      mngr_id VARCHAR2(20) NOT NULL, 
		      anm_degree VARCHAR2(50) NOT NULL,
		      anm_start DATE NOT NULL, 
		      anm_end DATE NOT NULL,
		      ANM_DIVISION VARCHAR(10) NOT NULL,
		      ANM_YEAR VARCHAR(10) NOT NULL
		      );	
	
	CREATE SEQUENCE anm_no_seq_name
	    START WITH 1
	    INCREMENT BY 1 
	    MAXVALUE 1000
	    NOCYCLE 
	    NOCACHE; 
	*/
	
	//공고 년도 조력자구분
	
	private int AnmNum;   //공고번호
	private Timestamp AnmUploadDate;   //공고작성일
	private String AnmTitle;   //공고제목
	private String AnmContent;   //공고내용
	private String AnmFileLoca;   //공고 파일 주소
	private int AnmViewCnt;   //공고 조회수
	private String ManagerId;   //작성자 아이
	private String AnmDegree;   //공고 차수
	private Timestamp AnmStart; //공고시작
	private Timestamp AnmEnd;   //공고마감
	private String AnmDivision; //조력자 구분
	private String AnmYear; //년도
	
}