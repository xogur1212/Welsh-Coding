package com.welsh.model;


import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class CartDao {
	// db접속하고

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public int insertCart(CartDto cartDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		log.info("CartdDto={}",cartDto);
		result = sqlSession.insert("insertCart", cartDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	public List<String> findproductNumber(CartDto cartDto) {
		List<String> productList =null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		productList =sqlSession.selectList("findproductNumber",cartDto);
		sqlSession.close();
		return productList;
	}

	//
	public List<ProductDto> selectCartProduct(List<String> productStringList) {
		
		
	
		List<ProductDto> productList =null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		productList =sqlSession.selectList("selectCartProduct",productStringList);
		sqlSession.close();
		return productList;
		
	}

	public List<CartDto> findProductInfo(CartDto cartDto) {
		List<CartDto> productInfoList =null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		productInfoList =sqlSession.selectList("findProductInfo",cartDto);
		sqlSession.close();
		return productInfoList;
	}
	
	public int deleteCartInfo(CartDto cartDto) {
		int result=0;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		result =sqlSession.delete("deleteCartInfo",cartDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

}