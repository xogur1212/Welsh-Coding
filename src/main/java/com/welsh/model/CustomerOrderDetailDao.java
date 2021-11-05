package com.welsh.model;


import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class CustomerOrderDetailDao {
	//db접속하고 
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;



	public int insertOrderDetail(List<CustomerOrderDetailDto> customerOrderDetailList) {
		// TODO Auto-generated method stub
		int result=0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("insertOrderDetail",customerOrderDetailList);
		sqlSession.commit();
		sqlSession.close();
		
		
		return result;
	}



	public List<CustomerOrderDetailDto> getOrderDetailList(CustomerOrderDetailDto customerOrderDetailDto) {
		List<CustomerOrderDetailDto> orderDetailList= null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		orderDetailList =sqlSession.selectList("getOrderDetailList",customerOrderDetailDto);
		sqlSession.close();
		return orderDetailList;
	}




	
}