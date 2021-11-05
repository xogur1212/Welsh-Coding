package com.welsh.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.welsh.model.CartDao;
import com.welsh.model.CartDto;
import com.welsh.model.CustomerOrderDao;
import com.welsh.model.CustomerOrderDetailDao;
import com.welsh.model.CustomerOrderDetailDto;
import com.welsh.model.CustomerOrderDto;
import com.welsh.model.MemberDto;
import com.welsh.model.ProductDao;
import com.welsh.model.ProductDto;
import com.welsh.model.SearchDto;
import com.welsh.utils.ScriptWriterUtil;
import com.welsh.utils.StringUtil;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class OrderController {
	
	
	
	@Autowired 
	CustomerOrderDao customerOrderDao;

	/*
	@RequestMapping("/OrderJsonList.do")
	@ResponseBody
	public Map<String, Object> orderJsonList(SearchDto searchDto) {

		Map<String, Object> hashMap = null;
		int clickedPage =searchDto.getClickedPage();
		log.info("clickedPage={}",clickedPage);
		if (clickedPage == 0) {
			clickedPage = 1; // clickedPage는 null값으로 들어올때도 있다. header 에 있는 게시판을 클릭했을때...
		}
		int currentPage =clickedPage; // 정수변환

		int total = 0; // 10
		int listPerCount = 7; // 한번에 보여지는 리스트 갯수 (tr)
		int pageGroupCount = 3; // pagination의 한번에 보여지는 갯수

		total = customerOrderDao.getTotal(); // 전체 글 갯수
		int lastPage = (int) (total / listPerCount) + 1;

		int startPage = (int) ((currentPage - 1) / pageGroupCount) * pageGroupCount + 1;
		int endPage = startPage + pageGroupCount - 1;

		if (endPage > lastPage) {
			endPage = lastPage;
		}

		int start = (currentPage - 1) * listPerCount + 1;
		int end = start + listPerCount;

	
		

		List<CustomerOrderDto> orderList = customerOrderDao.getAllOrder(start,end);
		hashMap = new HashMap<String, Object>();
		// log.info("galleryList={}",galleryList);
		hashMap.put("orderList", orderList);
		
		hashMap.put("lastPage", lastPage);
		hashMap.put("listPerCount", listPerCount);
		hashMap.put("startPage", startPage);
		hashMap.put("endPage", endPage);
		hashMap.put("currentPage", currentPage);
		hashMap.put("pageGroupCount", pageGroupCount);
		hashMap.put("total", total);
		// hashMap.put("totalReply", totalReply);
		return hashMap;
	}
	*/
	
	@RequestMapping("/OrderSearchList.do")
	@ResponseBody
	public Map<String, Object> orderSearchList(SearchDto searchDto) {

		Map<String, Object> hashMap = null;
		log.info("SearchDto={}",searchDto);
		String searchSelect = searchDto.getSearchSelect();
		String searchWord = searchDto.getSearchWord();
		
		if(searchWord.equals("blank"))
			searchWord="";
		int clickedPage =searchDto.getClickedPage();
		if (clickedPage == 0) {
			clickedPage = 1; // clickedPage는 null값으로 들어올때도 있다. header 에 있는 게시판을 클릭했을때...
		}
		int currentPage = clickedPage; // 정수변환

		int total = 0; // 10
		int listPerCount = 7; // 한번에 보여지는 리스트 갯수 (tr)
		int pageGroupCount = 3; // pagination의 한번에 보여지는 갯수
		if(searchSelect.equals("") || searchWord.equals(""))
			total = customerOrderDao.getTotal(); // 전체 글 갯수
		else
			total = customerOrderDao.getSearchTotal(searchSelect, searchWord); // 전체 글 갯수
		int lastPage = (int) (total / listPerCount) + 1;

		int startPage = (int) ((currentPage - 1) / pageGroupCount) * pageGroupCount + 1;
		int endPage = startPage + pageGroupCount - 1;

		if (endPage > lastPage) {
			endPage = lastPage;
		}

		int start = (currentPage - 1) * listPerCount + 1;
		int end = start + listPerCount;

	
		searchDto.setStart(start);
		searchDto.setEnd(end);
		List<CustomerOrderDto> orderList=null;
		if(searchSelect.equals("") || searchWord.equals(""))
			orderList = customerOrderDao.getAllOrder(start,end);	
		else
		    orderList = customerOrderDao.getSearchAllList(searchDto);
		hashMap = new HashMap<String, Object>();
		// log.info("galleryList={}",galleryList);
		hashMap.put("orderList", orderList);
		
		hashMap.put("lastPage", lastPage);
		hashMap.put("listPerCount", listPerCount);
		hashMap.put("startPage", startPage);
		hashMap.put("endPage", endPage);
		hashMap.put("currentPage", currentPage);
		hashMap.put("pageGroupCount", pageGroupCount);
		hashMap.put("total", total);
		hashMap.put("searchSelect", searchSelect);
		hashMap.put("searchWord", searchWord);
		// hashMap.put("totalReply", totalReply);
		return hashMap;
	}


	
	
	

}
