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
public class UserDetailVO {
	
	/*
	CREATE TABLE UserDetail (
		JOIN_SOC_NUM	VARCHAR2(20)	NOT NULL,
		JOIN_NAME	VARCHAR2(30)	NOT NULL,
		JOIN_PW	VARCHAR2(30)	NOT NULL,
		JOIN_GEN	VARCHAR2(5)	NOT NULL,
		JOIN_EMAIL	VARCHAR2(50)	NOT NULL,
		JOIN_PHONE	VARCHAR2(20)	NOT NULL,
		JOIN_ADDR_BASIC	VARCHAR2(100)	NOT NULL,
		JOIN_ADDR_DETAIL	VARCHAR2(100)	NOT NULL,
		JOIN_DATE	DATE DEFAULT SYSDATE	NOT NULL,
		JOIN_RIGHT	VARCHAR2(1)	NOT NULL
		); 
	*/
	
	private String JoinSocNum;
	private String JoinName;
	private String JoinPw;
	private String JoinGen;
	private String JoinEmail;
	private String JoinPhone;
	private String JoinAddrBasic;
	private String JoinAddrDetail;
	private Date JoinDate;
	private String JoinRight;
	
}
