package com.spring.pr.command;

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
public class GhVO {

	/*
	CREATE TABLE Gh (
		GH_NUM_SEQ	NUMBER(10)	NOT NULL,
		GH_NAME	VARCHAR2(30)	NOT NULL,
		GH_OFC_NAME	VARCHAR2(20)	NOT NULL,
		GH_OFC_NUM	VARCHAR2(20)	NOT NULL,
		GH_YEAR	VARCHAR2(20)	NOT NULL,
		GH_SRTTN	VARCHAR2(1)	NOT NULL,
		GH_SOC_NUM	VARCHAR2(20)	NOT NULL,
		GH_BSNS_NUM	VARCHAR2(30)	NOT NULL,
		GH_JOB	VARCHAR2(50)	NOT NULL,
		GH_FAX	VARCHAR2(20)	NOT NULL,
		GH_HOME_NUM	VARCHAR2(20)	NULL,
		GH_ACAD_BACK	VARCHAR2(500)	NOT NULL,
		GH_ACAD_BACK_FILE	VARCHAR2(30)	NOT NULL,
		GH_CARRER	VARCHAR2(500)	NOT NULL,
		GH_CARRER_FILE	VARCHAR2(30)	NOT NULL,
		GH_EMAIL	VARCHAR2(50)	NOT NULL,
		GH_PHONE_NUM	VARCHAR2(20)	NOT NULL,
		GH_BANK	VARCHAR2(20)	NOT NULL,
		GH_ACC_HOL	VARCHAR2(30)	NOT NULL,
		GH_BANK_NUM	VARCHAR2(30)	NOT NULL,
		GH_PSTL_CODE	VARCHAR2(10)	NOT NULL,
		GH_ADDR	VARCHAR2(100)	NOT NULL,
		GH_DTL_ADDR	VARCHAR2(100)	NOT NULL,
		APP_NUM_SEQ	NUMBER(10)	NOT NULL,
		JOIN_ID	VARCHAR2(20)	NOT NULL
		); 
		
		CREATE SEQUENCE GH_NUM_SEQ_NAME
		    START WITH 1
		    INCREMENT BY 1  
		    MAXVALUE 1000
		    NOCYCLE 
		    NOCACHE;
	*/
	private int GhNum;
	private String GhName;
	private String GhOfcName;
	private String GhOfcNum;
	private String GhYear;
	private String GhSrttn;
	private String GhSocNum;
	private String GhBsnsNum;
	private String GhJob;
	private String GhFax;
	private String GhHomeNum;
	private String GhAcadBack;
	private String GhAcadBackFile;
	private String GhCarrer;
	private String GhCarrerFile;
	private String GhEmail;
	private String GhPhoneNum;
	private String GhBank;
	private String GhAccHol;
	private String GhBankNum;
	private String GhPstlCode;
	private String GhAddr;
	private String GhDtlAddr;
	private int AppNum;
	private String JoinId;
	
	
}
