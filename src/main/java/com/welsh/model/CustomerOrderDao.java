package com.welsh.model;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CustomerOrderDao {
	// db접속하고

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public int insertOrder(CustomerOrderDto customerOrderDto) {

		int result = 0;

		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("insertOrder", customerOrderDto);
		sqlSession.commit();
		sqlSession.close();

		return result;

	}

	public List<CustomerOrderDto> getAllOrder(int start, int end) {

		List<CustomerOrderDto> orderList = null;
		HashMap<String, Integer> page = new HashMap<String, Integer>();
		page.put("start", start);
		page.put("end", end);
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		orderList = sqlSession.selectList("getAllOrder",page);

		sqlSession.close();
		return orderList;
	}

	public int getTotal() {

		int result;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.selectOne("getTotal");
		sqlSession.close();
		return result;
	}

	public int getSearchTotal(String searchSelect, String searchWord) {
		int result=0;
		HashMap<String, String> searchData = 
				new HashMap<String,String>();
		searchData.put("searchSelect", searchSelect);
		searchData.put("searchWord", searchWord);
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.selectOne("getSearchTotal",searchData);
		sqlSession.close();
		return result;
	}

	public List<CustomerOrderDto> getSearchAllList(SearchDto searchDto) {
		List<CustomerOrderDto> orderList = null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		orderList = sqlSession.selectList("getSearchAllList",searchDto);
		sqlSession.close();
		return orderList;
	}

	public List<CustomerOrderDto> getAllOrderList(String userId) {
		// TODO Auto-generated method stub
		List<CustomerOrderDto> orderList=null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		orderList = sqlSession.selectList("getAllOrderList",userId);
		sqlSession.close();
		
		return orderList;
	}

	

}