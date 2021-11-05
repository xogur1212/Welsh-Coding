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
public class CustomerOrderDto {

	private int no;
	private int orderNumber;
	private String userId;
	private Date orderDate;
	private int deliveryZipcode;
	private String deliveryAddress;
	private String reciverName;
	private String reciverPhone;
	int num;
	private List<CustomerOrderDetailDto> productOrderDetailList;
	
}
      