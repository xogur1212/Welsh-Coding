package com.welsh.model;


import java.sql.Date;

import org.springframework.stereotype.Repository;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Repository
public class ProductReplyDto {

	private int no;
	private int replyNumber;
	private String productNumber;
	private String userNickname;
	private Date regDate;
	private int reGroup;
	private int reStep;
	private int reLevel;
	private String contents;
	
}
 	  