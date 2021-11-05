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
public class ProductImageListDto {

	private int no;
	private int fileNumber;
	private String productNumber;
	private String categoryCode;
	private String productImg;
	private String productRealImg;
	private	String imageType;
	private Date createDate;
	
}
 	  