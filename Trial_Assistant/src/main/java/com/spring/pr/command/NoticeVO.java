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
public class NoticeVO {
	
	/*
		CREATE TABLE Notice (
		NOTICE_NUMBER_SEQ	NUMBER(10)	NOT NULL,
		MNGR_ID	VARCHAR(20)	NOT NULL,
		NOTICE_TITLE	VARCHAR2(50)	NOT NULL,
		NOTICE_WRITER	VARCHAR2(20)	DEFAULT 'ADMIN' NOT NULL,
		NOTICE_CONTENT	VARCHAR2(3000)	NOT NULL,
		NOTICE_DATE	DATE	DEFAULT sysdate NOT NULL,
		NOTICE_FILES	VARCHAR2(50)	NOT NULL,
		NOTICE_HITS	NUMBER(10)	DEFAULT 0 NOT NULL,
		NOTICE_FILE_REAL VARCHAR2(300) 
		);
		
		CREATE SEQUENCE NOTICE_NUMBER_SEQ_NAME
		    START WITH 1
		    INCREMENT BY 1 
		    MAXVALUE 1000
		    NOCYCLE 
		    NOCACHE;
    
*/
private int NoticeNum;
private String NoticeTitle;
private String NoticeWriter;
private String NoticeContent;
private Timestamp NoticeDate;
private String NoticeFile;
private String NoticeFileReal;
private int NoticeHits;
private String MNGRID;
}
