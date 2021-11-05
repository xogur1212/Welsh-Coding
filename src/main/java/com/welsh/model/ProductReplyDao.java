package com.welsh.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;




@Repository
@Slf4j
public class ProductReplyDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	
	
	public ProductDto getProductOne(ProductDto productDto) {
		
		log.info("ProductDao={}",productDto.getNo());
		SqlSession sqlSession =sqlSessionFactory.openSession();
		ProductDto productselectOne =sqlSession.selectOne("getProductOne",productDto);
		sqlSession.close();
		
		return productselectOne;
		
	}


	public int insertReply(ProductReplyDto productReplyDto) {
		// TODO Auto-generated method stub
		int result=0;
		SqlSession sqlSession=sqlSessionFactory.openSession();
		result=sqlSession.insert("insertReply",productReplyDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	
	public int getLastReplyNumber() {
		// TODO Auto-generated method stub
		int result=0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.selectOne("getLastReplyNumber");
		sqlSession.close();
		
		return result;
		
	}


	public List<ProductReplyDto> getAllReply(String productNumber) {
		// TODO Auto-generated method stub
		List<ProductReplyDto> productReplyList=null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		productReplyList = sqlSession.selectList("getAllReply",productNumber);
		sqlSession.close();
		return productReplyList;
	}


	public int deleteReply(ProductReplyDto productReplyDto) {
		int result=0;
		SqlSession sqlSession=sqlSessionFactory.openSession();
		result=sqlSession.delete("deleteReply",productReplyDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}
}
