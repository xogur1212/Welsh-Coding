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
public class CartDto {

	private int no;
	private int cartNumber;
	private String productNumber;
	private String cartValue;
	private int productPrice;
	private int productCount;
	
}
      