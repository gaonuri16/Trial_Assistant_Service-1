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
public class UserDetailVO {
	
	/*
	CREATE TABLE UserDetail (
		JOINSOCNUM	VARCHAR2(20)	NOT NULL,
		JOINNAME	VARCHAR2(30)	NOT NULL,
		JOINPW	VARCHAR2(30)	NOT NULL,
		JOINGEN	VARCHAR2(5)	NOT NULL,
		JOINEMAIL	VARCHAR2(50)	NOT NULL,
		JOINPHONE	VARCHAR2(20)	NOT NULL,
		JOINADDRBASIC	VARCHAR2(100)	NOT NULL,
		JOINADDRDETAIL	VARCHAR2(100)	NOT NULL,
		JOINDATE	DATE DEFAULT SYSDATE	NOT NULL,
		JOINRIGHT	VARCHAR2(1)	NOT NULL,
		INSSOCNUM VARCHAR2(20),
		INSADDRBASIC VARCHAR2(100),
		INSADDRDETAIL VARCHAR2(100)
		); 
	*/
	
	public String JOINSOCNUM;
	public String JOINNAME;
	public String JOINPW;
	public String JOINGEN;
	public String JOINEMAIL;
	public String JOINPHONE;
	public String JOINADDRBASIC;
	public String JOINADDRDETAIL;
	
	public String JOINRIGHT;
	public String INSSOCNUM;
	public String INSADDRBASIC;
	public String INSADDRDETAIL;
	
	
}
