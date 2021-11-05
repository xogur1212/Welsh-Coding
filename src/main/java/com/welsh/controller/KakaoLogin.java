package com.welsh.controller;





import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.welsh.model.MemberDao;
import com.welsh.model.MemberDto;
import com.welsh.utils.ScriptWriterUtil;

import lombok.extern.slf4j.Slf4j;

@Controller		
@Slf4j
public class KakaoLogin {
	
	@Autowired
	MemberDto memberDto;
	
	@Autowired
	MemberDao memberDao;
	
	@Autowired
	MemberDto loggedMember;
	
	@RequestMapping("/kakao_login")
	public String kakao_login() {
			
		
		
		
		return "kakaoLogin";

	}
	@ResponseBody
	@RequestMapping("/kakaoLogin.do")
	public Map<String,Object> kakaoLogin(MemberDto memberDto, HttpSession session) {
		
		int insertResult=0;
		int countResult=0;
		
		log.info("kakaoAccount={}",memberDto);
		Map<String,Object> hashMap =new HashMap<String,Object>();
		hashMap.put("memberDto", memberDto);
		
		memberDto.setIsKakaoLogin("true");
		
		countResult=memberDao.isExistId(memberDto);
		if(countResult==0) {
			insertResult=memberDao.kakaoLogin(memberDto);
		}
		if(countResult>0) {
			loggedMember = memberDao.getKakaoLoggedMember(memberDto);

			if (loggedMember != null) {
				session.setAttribute("loggedMember", loggedMember);
				log.info("loggedMember={}", session.getAttribute("loggedMember"));
				

			}
			
		}
		hashMap.put("countResult", countResult);
		return hashMap;
	}
	


	

}
