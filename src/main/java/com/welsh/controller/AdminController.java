package com.welsh.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.welsh.model.CustomerOrderDto;
import com.welsh.model.ProductDao;
import com.welsh.model.ProductDto;
import com.welsh.model.ProductImageListDao;
import com.welsh.model.ProductImageListDto;
import com.welsh.utils.ScriptWriterUtil;
import com.welsh.utils.StringUtil;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AdminController {

	@Autowired
	ProductDto productDto;

	@Autowired
	ProductDao productDao;

	@Autowired
	ProductImageListDto productImageListDto;

	@Autowired
	ProductImageListDao productImageListDao;

	// String fileRoot = "c:/productImage/";
	 String fileRoot="/home/ubuntu/uploadFiles/";

	@ResponseBody
	@RequestMapping("/RegisterItem.do")
	public String registerItem(String categorySm, ProductDto productDto, MultipartFile multipartImg, HttpServletResponse response,
			HttpServletRequest request) throws IOException {
		
		log.info("category={}",categorySm);
		String context = request.getContextPath();// 지금 실행중인 context
		// String fileRoot = "c:/productImage/";
		String originalFileName = multipartImg.getOriginalFilename(); // 중복 파일때문에...
		String extention = FilenameUtils.getExtension(originalFileName);// 확장자 구하기...
		String savedFileName = UUID.randomUUID() + "." + extention; // 16 짜리 random코드 작성
		File targetFile = new File(fileRoot + savedFileName);
		String dbFileName = context + "/productImage/" + savedFileName;
		
		InputStream fileStream = multipartImg.getInputStream();
		FileUtils.copyInputStreamToFile(fileStream, targetFile);
		// productDto
		
		productDto.setCategoryCode(categorySm); //카테고리 sm으로 설정
		String productNumber = productDto.getCategoryCode().substring(0, 1); //상품번호 첫글짜 따서
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
		String today = sdf.format(date);
		log.info("date={}", today);

		String randomNumber = StringUtil.numberGen(6, 1);
		productNumber = productNumber + "-" + today + "-" + randomNumber;
		productDto.setProductNumber(productNumber);
		productDto.setProductHits(0);
		productDto.setIsRecommend("false");
		
		
		// productImageListDto
		productImageListDto.setFileNumber(1);
		productImageListDto.setProductNumber(productDto.getProductNumber());
		productImageListDto.setProductRealImg(originalFileName);
		productImageListDto.setProductImg(dbFileName);
		productImageListDto.setCategoryCode(productDto.getCategoryCode());
		productImageListDto.setImageType("normal");

		log.info("productDto ={}", productDto.toString());
		log.info("productIMageLIstDto={}", productImageListDto.toString());
		
		int productDaoResult = productDao.insertProduct(productDto);
		int productImageListDaoResult = 0;
		if( productDaoResult > 0 ) {
			productImageListDaoResult = productImageListDao.insertProductImage(productImageListDto);
		}
		

		if ( productImageListDaoResult > 0) {
			ScriptWriterUtil.alertAndNext(response, "등록되었습니다", "AdminPage.do");
		} else {
			ScriptWriterUtil.alertAndBack(response, "등록실패");
		}
		return null;

	}

	@RequestMapping("/ProductDetails.do")
	public String productDetails(ProductDto productDto, ProductImageListDto productImageListDto) {

		return "test/productDetails";
	}

	@RequestMapping("/ProductDelete.do")
	public String productDelete(ProductDto productDto, HttpServletResponse response) throws IOException {

		int productImageListDaoResult = productDao.deleteProduct(productDto);
		if (productImageListDaoResult > 0) {
			ScriptWriterUtil.alertAndNext(response, "상품삭제완료", "Products.do");
		} else {
			ScriptWriterUtil.alertAndBack(response, "삭제실패");
		}

		return null;
	}

	@ResponseBody
	@RequestMapping("/ProductImageInsert.do")
	public String productImageInsert(ProductImageListDto productImageListDto, MultipartFile multipartAddImg,
			HttpServletResponse response, HttpServletRequest request) throws IOException {

		productDto.setProductNumber(productImageListDto.getProductNumber());
		ProductDto productSelectOne = productDao.getProductOne(productDto);

		// image
		String context = request.getContextPath();// 지금 실행중인 context
		// String fileRoot = "c:/productImage/";
		String originalFileName = multipartAddImg.getOriginalFilename(); // 중복 파일때문에...
		String extention = FilenameUtils.getExtension(originalFileName);// 확장자 구하기...
		String savedFileName = UUID.randomUUID() + "." + extention; // 16 짜리 random코드 작성
		File targetFile = new File(fileRoot + savedFileName);
		String dbFileName = context + "/productImage/" + savedFileName;

		InputStream fileStream = multipartAddImg.getInputStream();
		FileUtils.copyInputStreamToFile(fileStream, targetFile);

		// filenumber
		int getLastFileNumberResult = productImageListDao.getLastFileNumber();

		// productImageListDto

		productImageListDto.setCategoryCode(productSelectOne.getCategoryCode());
		productImageListDto.setProductRealImg(originalFileName);
		productImageListDto.setProductImg(dbFileName);
		productImageListDto.setFileNumber(getLastFileNumberResult + 1);
		productImageListDto.setImageType("normal");

		int productImageListDaoResult = productImageListDao.insertProductImage(productImageListDto);

		if (productImageListDaoResult > 0) {
			ScriptWriterUtil.alertAndNext(response, "이미지추가성공.", "AdminPage.do");
		} else {
			ScriptWriterUtil.alertAndBack(response, "이미지추가실패");
		}

		return null;
	}

	@ResponseBody
	@RequestMapping("/ProductImageUpdate.do")
	public String productImageUpdate(String fileNumber, String productNumber, MultipartFile multipartUpdateImg,
			HttpServletResponse response, HttpServletRequest request) throws IOException {

		log.info("productNumber= {},fileNumber={}", productNumber, fileNumber);

		// image
		String context = request.getContextPath();// 지금 실행중인 context
		// String fileRoot = "c:/productImage/";
		String originalFileName = multipartUpdateImg.getOriginalFilename(); // 중복 파일때문에...
		String extention = FilenameUtils.getExtension(originalFileName);// 확장자 구하기...
		String savedFileName = UUID.randomUUID() + "." + extention; // 16 짜리 random코드 작성
		File targetFile = new File(fileRoot + savedFileName);
		String dbFileName = context + "/productImage/" + savedFileName;

		InputStream fileStream = multipartUpdateImg.getInputStream();
		FileUtils.copyInputStreamToFile(fileStream, targetFile);

		// etc
		productImageListDto.setProductNumber(productNumber);
		productImageListDto.setFileNumber(Integer.parseInt(fileNumber));
		productImageListDto.setProductRealImg(originalFileName);
		productImageListDto.setProductImg(dbFileName);

		productImageListDto.setImageType("normal");

		int productImageListDaoResult = productImageListDao.updateProductImage(productImageListDto);

		if (productImageListDaoResult > 0) {
			ScriptWriterUtil.alertAndNext(response, "수정되었습니다.", "AdminPage.do");
		} else {
			ScriptWriterUtil.alertAndBack(response, "수정실패");
		}

		return null;
	}

	@ResponseBody
	@RequestMapping("/ProductImageDelete.do")
	public String productImageDelete(String fileNumber, String productNumber, HttpServletResponse response)
			throws IOException {

		// etc
		productImageListDto.setProductNumber(productNumber);
		productImageListDto.setFileNumber(Integer.parseInt(fileNumber));

		int productImageListDaoResult = productImageListDao.deleteProductImage(productImageListDto);

		if (productImageListDaoResult > 0) {
			ScriptWriterUtil.alertAndNext(response, "삭제되었습니다.", "AdminPage.do");
		} else {
			ScriptWriterUtil.alertAndBack(response, "이미지삭제실패");
		}

		return null;
	}
	

	@ResponseBody
	@RequestMapping("/UpdateRecomendItem.do")
	public  String updateRecomendItem(ProductDto productDto, HttpServletResponse response) throws IOException
			 {
			
			Map<String, Object> hashMap = null;
			hashMap = new HashMap<String, Object>();
			int result=0;
			log.info("isRecommend={}",productDto);
		
			if(productDto.getIsRecommend().equals("true")) {
				
				log.info("isRecommend1={}",productDto);
				result=productDao.updateIsRecommend(productDto);
			}else if(productDto.getIsRecommend().equals("false")) {
				
				log.info("isRecommend2={}",productDto);
				result=productDao.updateIsRecommend(productDto);
			}
			
			if (result > 0) {
				ScriptWriterUtil.alertAndNext(response, "추전제품수정완료", "Products.do");
			} else {
				ScriptWriterUtil.alertAndBack(response, "오류입니다.");
			}
			
			return null;
		
		
	}
	@ResponseBody
	@RequestMapping("/ChartData.do")
	public  Map<String, Object> chartData(){
		
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		List<CustomerOrderDto> orderList=null;
		
		
		orderList=productDao.getAllChart();
		hashMap.put("orderList", orderList);
		return hashMap;
	}
	

}
