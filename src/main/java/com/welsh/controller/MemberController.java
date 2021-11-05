package com.welsh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.welsh.model.MemberDao;
import com.welsh.model.MemberDto;
import com.welsh.utils.ScriptWriterUtil;

import ch.qos.logback.core.pattern.color.BoldCyanCompositeConverter;
import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes("userId")

@Slf4j
public class MemberController {

	@Autowired
	MemberDto loggedMember;

	@Autowired
	MemberDao memberDao;

	@Autowired
	MemberDto memberDto;
	
	int no;
	@RequestMapping("/MemberModifyForm.do")
	public String memberModifyForm(HttpSession session, Model model) {
		loggedMember  = (MemberDto)session.getAttribute("loggedMember"); 
		model.addAttribute("accountMember",loggedMember);
		return "junsic/infoEdit";
	}
	//gahee
	
	
	@RequestMapping("/MemberJoin.do")
	public String memberJoin(MemberDto memberDto, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		memberDto.setUserAddress(memberDto.getUserAddress01() + " " + memberDto.getUserAddress02());
		memberDto.setIsKakaoLogin("false");
		BCryptPasswordEncoder encorder=new BCryptPasswordEncoder();
		String beforeSecurityPwd=memberDto.getUserPwd();
		String afterSecurityPwd=encorder.encode(beforeSecurityPwd);
		memberDto.setUserPwd(afterSecurityPwd);
		log.info("MemberDto={}", memberDto);

		int result = memberDao.insertMember(memberDto);

		// 경고창 띄어서 페이지 전송
		if (result > 0) {
			ScriptWriterUtil.alertAndNext(response, "회원가입이 되었습니다.", "LoginForm.do");
		} else {
			ScriptWriterUtil.alertAndBack(response, "회원가입에 실패했습니다.");
		}
		return null;

	}

	@RequestMapping("/MemberJsonList02.do") // MemberList.do로 들어왔을때 views/member/list.jsp를 보여주겠다.
	@ResponseBody
	public List<MemberDto> jsonList02() {
		List<MemberDto> memberList = memberDao.showAllMember();
		return memberList;
	}

	@RequestMapping("/MemberLogin.do")
	public String memberLogin(MemberDto memberDto, HttpSession session, HttpServletResponse response)
			throws IOException { // 로그인할땐 HttpSession에 담아두기. //ScriptWriteUtil만들어 둔거 쓸려면 HttpServletResponse쓰기.
		
		loggedMember = memberDao.getLoggedMember(memberDto);
		
		if(loggedMember==null) {
			ScriptWriterUtil.alertAndBack(response, "아이디 비밀번호를 확인해주세요.");
		}
		log.info("loggedmember={}",loggedMember);
		BCryptPasswordEncoder encorder=new BCryptPasswordEncoder();
		if(encorder.matches(memberDto.getUserPwd(),loggedMember.getUserPwd())) {
			if (loggedMember != null) {
				session.setAttribute("loggedMember", loggedMember);
				log.info("loggedMember={}", session.getAttribute("loggedMember"));
				if(loggedMember.getUserId().equals("admin")) {
					ScriptWriterUtil.alertAndNext(response, "관리자 페이지로 이동합니다.", "AdminPage.do");
				}else {
					ScriptWriterUtil.alertAndNext(response, "로그인되었습니다.", "/welsh");
				}
				

			} else {
				ScriptWriterUtil.alertAndBack(response, "아이디 비밀번호를 확인해주세요.");
			}
			
		} else {
			ScriptWriterUtil.alertAndBack(response, "아이디 비밀번호를 확인해주세요.");
		}
		
		
		
		
		return null;
	}

//	@ModelAttribute
//	@RequestMapping("/MyInfoForm.do")
//	public String memberList(Model model) {
//		List<MemberDto> memberList = memberDao.showAllMember();
//		model.addAttribute("memberList", memberList);
//		return "list1";
//	}
//	

	@RequestMapping("/MyInfo.do") // 주문 조회 및 관리 	장바구니	계정관리 선택해서 이동할 수 있는 페이지로 이동
	public String myInfo(HttpSession Session, HttpServletResponse response) throws Exception {
		
		loggedMember = (MemberDto) Session.getAttribute("loggedMember");
		// 세션값 불러오고
		String checkedLogin = null;
		if(loggedMember!=null) {
			checkedLogin = loggedMember.getUserId();
			//ScriptWriterUtil.alertAndNext(response, "마이인포", "MyInfo.do");
			log.info("loggg");
			return "junsic/myInfo";
		} else {
			//log.info("안로그");
			ScriptWriterUtil.alertAndNext(response, "로그인 하셔야 합니다.", "LoginForm.do");
			return null;
		}
		
	}
	
	@RequestMapping("/MemberLogout.do")  
	public String memberLogout(HttpSession session, HttpServletResponse response) throws IOException {
		loggedMember  = (MemberDto)session.getAttribute("loggedMember"); 	
		if(loggedMember!=null) {
			session.invalidate();
			ScriptWriterUtil.alertAndNext(response, "로그아웃 되었습니다.", "LoginForm.do");
		} else {
			ScriptWriterUtil.alertAndNext(response, "로그아웃 되었습니다.", "LoginForm.do");
		}
		return null;
	}
	

	@RequestMapping("/MyAccount.do") 	// 로그인한 아이디의 계정정보 보여주는 페이지로 이동
	public String myAccount(MemberDto memberDto,Model model) {
		memberDto = memberDao.getSelectAccount(memberDto);
		model.addAttribute("accountMember",memberDto);
		return "junsic/myAccount";
	}
	

	@RequestMapping("/MemberDelete.do")
	public String memberDelete(MemberDto memberDto, HttpServletResponse response) throws IOException {

		String dbPassword = memberDao.getPassword(memberDto.getUserId()); // UserId에 해당하는 패스워드 받기.
		if (dbPassword.equals(memberDto.getUserPwd())) {
			int result = memberDao.deleteMember(memberDto);
			if (result > 0) {
				ScriptWriterUtil.alertAndNext(response, "회원탈퇴 되었습니다.", "LoginForm.do");
			} else {
				ScriptWriterUtil.alertAndBack(response, "회원탈퇴에 실패했습니다.");
			}
		} else {
			ScriptWriterUtil.alertAndBack(response, "비밀번호를 확인해주세요.");
		}
		return null;
	}

	@RequestMapping("/MemberModify.do")
	public String memberModify(MemberDto memberDto, HttpServletResponse response, HttpServletRequest request) throws IOException {

		
		memberDto.setUserAddress(memberDto.getUserAddress01() + " " + memberDto.getUserAddress02());
		
		String currentPwd = request.getParameter("currentPwd");
		//String userId = request.getParameter("userId");
		log.info("userId===={}",memberDto.getUserId());
		String dbPassword = memberDao.getPassword(memberDto.getUserId());  // 
		log.info("dbPassword===={}",dbPassword);
		//memberDto.setUserId(userId);

		if (dbPassword.equals(currentPwd)) {
			log.info("memberDto==={}",memberDto.toString());
			int result = memberDao.memberModify(memberDto);
			if (result > 0) {
				ScriptWriterUtil.alertAndNext(response, "회원정보가 수정되었습니다.", "MyInfo.do");
			} else {
				ScriptWriterUtil.alertAndBack(response, "회원정보 수정에 실패했습니다.");
			}
		} else {
			ScriptWriterUtil.alertAndBack(response, "비밀번호를 확인해 주세요.");
		}
		return null;
	}

}

