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
public class SearchDto {

	private String searchWord;
	private int start;
	private int end;
	private String searchSelect;
	private int clickedPage;
	
	
}
      