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
public class InsttVO {

	/*
	CREATE TABLE Instt (
		INSTT_NUM_SEQ	NUMBER(10)	NOT NULL,
		INSTT_NAME	VARCHAR2(30)	NOT NULL,
		INSTT_OFC_NAME	VARCHAR2(50)	NOT NULL,
		INSTT_YEAR	VARCHAR2(20)	NULL,
		INSTT_SRTTN	VARCHAR2(1)	NOT NULL,
		INSTT_DTL_SRTTN	VARCHAR2(10)	NOT NULL,
		INSTT_SOC_NUM	VARCHAR2(20)	NOT NULL,
		INSTT_BSNS_NUM	VARCHAR2(30)	NOT NULL,
		INSTT_JOB	VARCHAR2(50)	NOT NULL,
		INSTT_FAX	VARCHAR2(20)	NOT NULL,
		INSTT_HOME_NUM	VARCHAR2(20)	NULL,
		INSTT_ACAD_BACK	VARCHAR2(500)	NOT NULL,
		INSTT_ACAD_BACK_FILE	VARCHAR2(30)	NOT NULL,
		INSTT_CARRER	VARCHAR2(500)	NOT NULL,
		INSTT_CARRER_FILE	VARCHAR2(30)	NOT NULL,
		INSTT_EMAIL	VARCHAR2(20)	NOT NULL,
		INSTT_PHONE_NUM	VARCHAR2(20)	NOT NULL,
		INSTT_BANK	VARCHAR2(20)	NOT NULL,
		INSTT_ACC_HOL	VARCHAR2(30)	NOT NULL,
		INSTT_BANK_NUM	VARCHAR2(30)	NOT NULL,
		INSTT_POST_NUM	VARCHAR2(10)	NOT NULL,
		INSTT_ADDR	VARCHAR2(50)	NOT NULL,
		INSTT_DTL_ADDR	VARCHAR2(50)	NOT NULL,
		APP_NUM_SEQ	NUMBER(10)	NOT NULL,
		JOIN_ID	VARCHAR2(20)	NOT NULL
		);
		
		CREATE SEQUENCE INSTT_NUM_SEQ_NAME
		    START WITH 1
		    INCREMENT BY 1  
		    MAXVALUE 1000
		    NOCYCLE 
		    NOCACHE;
	*/
	private int InsttNum;
	private String InsttName;
	private String InsttOfcName;
	private String InsttYear;
	private String InsttSrttn;
	private String InsttDtlSrttn;
	private String InsttSocNum;
	private String InsttBsnsNum;
	private String InsttJob;
	private String InsttFax;
	private String InsttHomeNum;
	private String InsttAcadBack;
	private String InsttAcadBakFile;
	private String InsttCarrer;
	private String InsttCarrerBack;
	private String InsttEmail;
	private String InsttPhoneNum;
	private String InsttBank;
	private String InsttAccHol;
	private String InsttBankNum;
	private String InsttPostNum;
	private String InsttAddr;
	private String InsttDtlAddr;
	private int AppNum;
	private String JoinId;
	
	
}
