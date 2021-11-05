package com.welsh.model;



import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Repository
public class ProductDto {

	private int no;
	private String productNumber;
	private String categoryCode;
	private String productName;
	private int productPrice;
	private int productStock;
	private String productDesc;
	private Date productInsertDate;
	private int productHits;
	private String productInfo;
	private String isRecommend;
	private List<ProductImageListDto> productImageList;
}
 	  