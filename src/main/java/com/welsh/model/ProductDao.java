package com.welsh.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;




@Repository
@Slf4j
public class ProductDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Autowired
	ProductDto productDto;
	
	public int insertProduct(ProductDto productDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("insertProduct", productDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}
	
	
	public List<ProductDto> getAllProduct(){
		List<ProductDto> productList =null;
		SqlSession sqlSession =sqlSessionFactory.openSession();
		productList =sqlSession.selectList("getAllProduct");
		sqlSession.close();
		return productList;
		
	}
	
	public ProductDto getProductOne(ProductDto productDto) {
		
		log.info("ProductDao={}",productDto.getNo());
		SqlSession sqlSession =sqlSessionFactory.openSession();
		ProductDto productselectOne =sqlSession.selectOne("getProductOne",productDto);
		sqlSession.close();
		
		return productselectOne;
		
	}


	public int deleteProduct(ProductDto productDto) {
		// TODO Auto-generated method stub
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.delete("deleteProduct", productDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
		
	}


	public int productIncreaseShowCount(ProductDto productDto) {
		// TODO Auto-generated method stub
		int result=0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.update("productIncreaseShowCount", productDto);
		sqlSession.commit();
		sqlSession.close();
		
		return result;
	}


	public int updateIsRecommend(ProductDto productDto) {
		int result=0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.update("updateIsRecommend", productDto);
		sqlSession.commit();
		sqlSession.close();
		
		return result;
	}
	
	public List<ProductDto> getProduct(ProductDto productDto){
		List<ProductDto> productList=null;
		
		SqlSession sqlSession =sqlSessionFactory.openSession();
		productList =sqlSession.selectList("getProduct",productDto);
		sqlSession.close();
		return productList;
	}


	public List<ProductDto> getAllRecommendProduct(ProductDto productDto) {
		List<ProductDto> productList=null;
		
		SqlSession sqlSession =sqlSessionFactory.openSession();
		productList =sqlSession.selectList("getAllRecommendProduct",productDto);
		sqlSession.close();
		return productList;
	}


	public List<ProductDto> getSearchProductList(SearchDto searchDto) {
		List<ProductDto> productList = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		productList = sqlSession.selectList("getSearchProductList",searchDto);
		sqlSession.close();
		return productList;
	}


	public List<CustomerOrderDto> getAllChart() {
		// TODO Auto-generated method stub
		List<CustomerOrderDto> orderList=null;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		orderList = sqlSession.selectList("getAllChart");
		sqlSession.close();
		
		return orderList;
		
	}


	public int productDecreaseStock(String productNumber) {
		// TODO Auto-generated method stub
		int result=0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.update("productDecreaseStock", productNumber);
		sqlSession.commit();
		sqlSession.close();
		
		return result;
	}
	
	
	

}
