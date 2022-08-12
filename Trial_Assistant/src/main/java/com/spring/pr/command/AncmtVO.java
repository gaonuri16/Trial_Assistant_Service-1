package com.spring.pr.command;



import java.sql.Date;

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
		anm_end DATE NOT NULL
		);	
	
	CREATE SEQUENCE anm_no_seq_name
	    START WITH 1
	    INCREMENT BY 1 
	    MAXVALUE 1000
	    NOCYCLE 
	    NOCACHE; 
	*/
	
	private int AnmNum;
	private Date AnmUploadDate;
	private String AnmTitle;
	private String AnmContent;
	private String AnmFileLoca;
	private int AnmViewCnt;
	private String ManagerId;
	private String AnmDegree;
	private Date AnmStart;
	private Date AnmEnd;
	
}