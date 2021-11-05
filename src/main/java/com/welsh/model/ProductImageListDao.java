package com.welsh.model;




import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class ProductImageListDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	public int insertProductImage(ProductImageListDto productImageListDto) {
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.insert("insertProductImage", productImageListDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	public int getLastFileNumber() {
		// TODO Auto-generated method stub
		int result=0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.selectOne("getLastFileNumber");
		sqlSession.close();
		
		return result;
		
	}

	public int updateProductImage(ProductImageListDto productImageListDto) {
		// TODO Auto-generated method stub
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.update("updateProductImage", productImageListDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}

	public int deleteProductImage(ProductImageListDto productImageListDto) {
		// TODO Auto-generated method stub
		int result = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		result = sqlSession.delete("deleteProductImage", productImageListDto);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}
	
	
}
 	  