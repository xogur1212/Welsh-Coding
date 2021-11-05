package com.welsh.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	//db접속하고 
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	public int insertMember(MemberDto memberDto) {
		int result = 0;  
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("insertMember", memberDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}
	
	public MemberDto getSelectAccount(MemberDto memberDto) {
		MemberDto myAccount = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		myAccount  = sqlSession.selectOne("getSelectAccount",memberDto);
		sqlSession.close();
		return myAccount;
	}
	
	public List<MemberDto> showAllMember() {
		List<MemberDto> memberList = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		memberList = sqlSession.selectList("showAllMember");
		sqlSession.close();
		return memberList;
	}
	
	public MemberDto getLoggedMember(MemberDto memberDto) {
		MemberDto loggedMember= null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		loggedMember=sqlSession.selectOne("getLoggedMember",memberDto);
		sqlSession.close();
		return loggedMember;
	}
	
//	public MemberDto getSelectOne(int no) {
//		MemberDto memberDto = null;
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		memberDto = sqlSession.selectOne("getSelectOne",no);
//		sqlSession.close();
//		return memberDto;
//	}

	public int deleteMember(MemberDto memberDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.delete("deleteMember",memberDto);
		sqlSession.commit();
		sqlSession.close();
		return result; 
	}

	public String getPassword(String userId) {
		String password = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		password = sqlSession.selectOne("getPassword",userId);	//오류 검토
		sqlSession.close();
		return password;
	}
	
	
	public int memberModify(MemberDto memberDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.update("memberModify",memberDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}
	
	public int idCheck(String userId) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.selectOne("idCheck",userId);
		sqlSession.close();
		return result;
	}

	public int kakaoLogin(MemberDto memberDto) {
		int result = 0;  
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("insertKakaoMember", memberDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	public int isExistId(MemberDto memberDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.selectOne("isExistId",memberDto);
		sqlSession.close();
		return result;
		
	}

	public MemberDto getKakaoLoggedMember(MemberDto memberDto) {
		MemberDto loggedMember= null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		loggedMember=sqlSession.selectOne("getKakaoLoggedMember",memberDto);
		sqlSession.close();
		return loggedMember;
	}
}
