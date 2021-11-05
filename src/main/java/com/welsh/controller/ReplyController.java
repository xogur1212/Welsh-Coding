package com.welsh.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.welsh.model.MemberDto;
import com.welsh.model.ProductDao;
import com.welsh.model.ProductReplyDao;
import com.welsh.model.ProductReplyDto;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ReplyController {

	@Autowired 
	ProductReplyDao productReplyDao;

	@Autowired
	ProductDao productDao;
	
	@Autowired
	MemberDto loggedMember;
	@ResponseBody
	@RequestMapping	("/ReplyRead.do")
	public Map<String,Object> replyRead(ProductReplyDto productReplyDto){
		
	
		String productNumber=productReplyDto.getProductNumber();
		List<ProductReplyDto> replyList=productReplyDao.getAllReply(productNumber);
		Map<String,Object> hashMap =new HashMap<String,Object>();
		
		hashMap.put("replyList", replyList);
		return hashMap;
	}
	
	@ResponseBody
	@RequestMapping("/ReplyWrite.do")
	public Map<String,Object> replyWrite(ProductReplyDto productReplyDto,HttpSession session){
		int result =0;
		
		int lastReply=productReplyDao.getLastReplyNumber();
		log.info("lastReply={}",lastReply);
	
	
		productReplyDto.setReplyNumber(lastReply+1);
		
		//loggedMember.
		MemberDto loggedMember=(MemberDto) session.getAttribute("loggedMember");
		log.info("session={}",loggedMember.getUserName());
		String userName=loggedMember.getUserName();
		productReplyDto.setUserNickname(userName);
		log.info("productReplyDto={}",productReplyDto);
		result=productReplyDao.insertReply(productReplyDto);
		
		String productNumber=productReplyDto.getProductNumber();
		List<ProductReplyDto> replyList=productReplyDao.getAllReply(productNumber);
		Map<String,Object> hashMap =new HashMap<String,Object>();
		
			hashMap.put("replyList", replyList);
		
		
		
		//hashMap.put("replyList", replyList);
		
		return hashMap;
		
	}
	
	@ResponseBody
	@RequestMapping("/ReplyDelete.do")
	public Map<String,Object> replyDelete(ProductReplyDto productReplyDto){
		
		int result=0;
		log.info("productReplyDto={}",productReplyDto);
		result=productReplyDao.deleteReply(productReplyDto);
		
		String productNumber=productReplyDto.getProductNumber();
		List<ProductReplyDto> replyList=productReplyDao.getAllReply(productNumber);
		Map<String,Object> hashMap =new HashMap<String,Object>();
		
		hashMap.put("replyList", replyList);
		
		return hashMap;
		
	}
	@ResponseBody
	@RequestMapping("/GetCustomer.do")	
	public Map<String,Object> getCustomer(MemberDto memberDto ,HttpSession Session){
		
		loggedMember = (MemberDto) Session.getAttribute("loggedMember");
		log.info("loggedMember={}",loggedMember);
		
		Map<String,Object> hashMap =new HashMap<String,Object>();
		hashMap.put("userId", loggedMember.getUserId());
		hashMap.put("userName",  loggedMember.getUserName());
		hashMap.put("userPhone",  loggedMember.getUserPhone());
		hashMap.put("userAddress",  loggedMember.getUserAddress());
		hashMap.put("userZipcode",  loggedMember.getUserZipcode());
		
		
		
		return hashMap;
	}
	
	
	
}
