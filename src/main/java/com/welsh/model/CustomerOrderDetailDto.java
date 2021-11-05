package com.welsh.model;


import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Repository
public class CustomerOrderDetailDto {

	private int no;
	private int orderNumber;
	private String productNumber;
	private String userId;
	private int productCount;
	private int productPrice;
	private String orderDetailStatus;
	private String refundCheck;
	
	private List<ProductDto> productList;
	
}
      