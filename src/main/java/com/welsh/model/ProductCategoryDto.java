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
public class ProductCategoryDto {

	private int no;
	
	private String categoryCode;
	private String categoryName;
}
 	  