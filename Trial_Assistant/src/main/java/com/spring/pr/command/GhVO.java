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
		GH_POST_NUM	VARCHAR2(10)	NOT NULL,
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
	private int ghNum;
	private String ghName;
	private String ghOfcName;
	private String ghOfcNum;
	private String ghYear; //조력자 년도
	private String ghSrttn;
	private String ghSocNum;
	private String ghBsnsNum;
	private String ghJob;
	private String ghFax;
	private String ghHomeNum;
	private String ghAcadBack;
	private String ghAcadBackFile;
	private String ghCarrer;
	private String ghCarrerFile;
	private String ghEmail;
	private String ghPhoneNum;
	private String ghBank;
	private String ghAccHol;
	private String ghBankNum;
	private String ghPostNum;
	private String ghAddr;
	private String ghDtlAddr;
	private int appNumSeq;
	private String joinId;
	
	
}
