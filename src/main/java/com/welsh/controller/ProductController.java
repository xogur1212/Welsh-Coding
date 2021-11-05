package com.welsh.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.welsh.model.CartDao;
import com.welsh.model.CartDto;
import com.welsh.model.CustomerOrderDao;
import com.welsh.model.CustomerOrderDetailDao;
import com.welsh.model.CustomerOrderDetailDto;
import com.welsh.model.CustomerOrderDto;
import com.welsh.model.MemberDto;
import com.welsh.model.ProductDao;
import com.welsh.model.ProductDto;
import com.welsh.model.SearchDto;
import com.welsh.utils.ScriptWriterUtil;
import com.welsh.utils.StringUtil;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ProductController {

	@Autowired
	ProductDto productSelectOne;

	@Autowired
	ProductDao productDao;

	@Autowired
	ProductDto productDto;

	@Autowired
	CartDto cartDto;
	
	@Autowired 
	CartDao cartDao;
	
	@Autowired
	CustomerOrderDao customerOrderDao;
	
	@Autowired
	CustomerOrderDetailDao customerOrderDetailDao;
	


	@RequestMapping("/ProductJsonList.do")
	@ResponseBody
	public Map<String, Object> productJsonList() {

		Map<String, Object> hashMap = null;

		List<ProductDto> productList = productDao.getAllProduct();
		hashMap = new HashMap<String, Object>();
		hashMap.put("productList", productList);
		return hashMap;
	}
	
	@RequestMapping("/OrderDetailJsonList.do")
	@ResponseBody
	public Map<String, Object> orderDetailJsonList(CustomerOrderDetailDto customerOrderDetailDto ) {

		Map<String, Object> hashMap = null;

	

		List<CustomerOrderDetailDto> orderDetailList = customerOrderDetailDao.getOrderDetailList(customerOrderDetailDto);
		hashMap = new HashMap<String, Object>();
		// log.info("galleryList={}",galleryList);
		hashMap.put("orderDetailList", orderDetailList);
		// hashMap.put("totalReply", totalReply);
		return hashMap;
	}

	@RequestMapping("/RecommendJsonList.do")
	@ResponseBody
	public Map<String, Object> recommendJsonList() {

		Map<String, Object> hashMap = null;

		
		productDto.setIsRecommend("true");
		List<ProductDto> productList = productDao.getAllRecommendProduct(productDto);
		hashMap = new HashMap<String, Object>();
		// log.info("galleryList={}",galleryList);
		hashMap.put("productList", productList);
		// hashMap.put("totalReply", totalReply);
		return hashMap;
	}
	
	
	
	@RequestMapping("/ProductJsonOne.do")
	@ResponseBody
	public Map<String, Object> productJsonOne(ProductDto productDto) {

		Map<String, Object> hashMap = null;

		log.info("pagecontroller={}", productDto);
		productSelectOne = productDao.getProductOne(productDto);
		hashMap = new HashMap<String, Object>();

		hashMap.put("productDto", productSelectOne);
		return hashMap;

	}

	@ResponseBody
	@RequestMapping("/ReadCookie.do")
	public Map<String, Object> readCookie(String productNumber,String cartNumber, HttpSession Session) {

		MemberDto loggedMember = (MemberDto) Session.getAttribute("loggedMember");
		log.info("loggedMember={}", loggedMember);
		cartDto.setCartValue(loggedMember.getUserId());
		log.info("CartDto={}", cartDto.toString());
		
		//hashmap
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		
		//productList 작업
		
		List<String> productList=cartDao.findproductNumber(cartDto);
		log.info("productListinReadCookie.do={}",productList);
		
		hashMap.put("selectCartProduct", cartDao.selectCartProduct(productList));
		
		return hashMap;
	}

	@ResponseBody
	@RequestMapping("/AddCookie.do")
	public Map<String, Object> addCookie(int count,CartDto cartDto, HttpSession Session,HttpServletResponse response) throws IOException {
	
		
		String randomValue = StringUtil.numberGen(8, 1);
		log.info("randomValue={}", randomValue);

		cartDto.setCartNumber(Integer.parseInt(randomValue));
		
		Cookie cartCodeCookie = new Cookie("cartNumber", randomValue);
		Cookie cartProductNumberCookie = new Cookie("productNumber", cartDto.getProductNumber());
		
		Cookie productCookie=null;

		///cartProductNumberCookie.setMaxAge(60 * 60 * 24 * 30);
		///cartCodeCookie.setMaxAge(60 * 60 * 24 * 30);
		/*
		 * if(mall.isCookieDel()) { //쿠키가 삭제 되었을 때
		 * 
		 * genderCookie.setMaxAge(0);
		 * 
		 * mall.setGender(null); //끊기
		 * 
		 * } else {
		 * 
		 * genderCookie.setMaxAge(60*60*24*30);	
		 * 
		 * }
		 */
		
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();

		
		productDto.setProductNumber(cartDto.getProductNumber());
		ProductDto productOne = productDao.getProductOne(productDto);
		
		cartDto.setProductPrice(productOne.getProductPrice());
		cartDto.setProductCount(productOne.getProductStock());
		MemberDto loggedMember = null;
		if(Session.getAttribute("loggedMember")!=null) {
			loggedMember = (MemberDto) Session.getAttribute("loggedMember");
			log.info("loggedMember={}", loggedMember);
			cartDto.setCartValue(loggedMember.getUserId());
			log.info("cartDto={}", cartDto);
			cartDao.insertCart(cartDto);
			List<String> productList=cartDao.findproductNumber(cartDto);
			String productCookieName=productList.get(0);
			for (int i=1;i<productList.size();i++) {
				productCookieName+="%"+productList.get(i);
				
			}
			log.info("productInfo={}",productCookieName);
			productCookie=new Cookie("productCookie",productCookieName);
		
			
			response.addCookie(cartCodeCookie);
			response.addCookie(cartProductNumberCookie);
			response.addCookie(productCookie);
			
			hashMap.put("returnPage", "Cart");
			
		}else {
			hashMap.put("returnPage", "Login");
		}
		
			
		
		

		return hashMap;
	}
	@ResponseBody
	@RequestMapping("/GetCartProductList.do")
	public  Map<String, Object> getCartProductList(HttpSession Session) {

		MemberDto loggedMember = (MemberDto) Session.getAttribute("loggedMember");
		log.info("loggedMember={}", loggedMember);
		cartDto.setCartValue(loggedMember.getUserId());
		log.info("CartDto={}", cartDto.toString());
		
		//hashmap
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		
		//productList 작업
		
		List<String> productList=cartDao.findproductNumber(cartDto);
		log.info("productListinReadCookie.do={}",productList);
		

		hashMap.put("selectCartProduct", cartDao.selectCartProduct(productList));
		

		return hashMap;
	}
	
	@ResponseBody
	@RequestMapping("/AddCustomerOrder.do")
	public Map<String, Object> addCustomerOrder(CustomerOrderDto customerOrderDto,HttpSession Session) {
		
		int customerOrderDaoResult=0;
		int customerOrderDetailResult=0;
		int cartDeleteResult=0;
		int decreaseProductStock=0;
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		
		//orderNumber
		String randomValue = StringUtil.numberGen(8, 1);
		log.info("randomValue={}",randomValue);
		customerOrderDto.setOrderNumber(Integer.parseInt(randomValue));
		
		//userId
		MemberDto loggedMember = (MemberDto) Session.getAttribute("loggedMember");
		customerOrderDto.setUserId(loggedMember.getUserId());
		
		//CustomerOrderDaoInsert
		customerOrderDaoResult=customerOrderDao.insertOrder(customerOrderDto);
		
		//getProductList
		cartDto.setCartValue(loggedMember.getUserId());
		List<CartDto> productList=cartDao.findProductInfo(cartDto);
		
		log.info("productList={}",productList);
		
		List<CustomerOrderDetailDto> customerOrderDetailList = new ArrayList<CustomerOrderDetailDto>();
		
		for(int i=0;i<productList.size();i++) {
			log.info("COUNT={}",i);
		
			CustomerOrderDetailDto customerOrderDetailDto=new CustomerOrderDetailDto();
			//이걸 for문밖으로뺴면 저장이이상하케됨 포문안에서 list 메모리참조
			//customderOrderDetail OrderNumber
			customerOrderDetailDto.setOrderNumber(customerOrderDto.getOrderNumber());
			
			//customderOrderDetail userId
			customerOrderDetailDto.setUserId(customerOrderDto.getUserId());
		
			//customderOrderDetail productNumber
			customerOrderDetailDto.setProductNumber(productList.get(i).getProductNumber());
			decreaseProductStock=productDao.productDecreaseStock(productList.get(i).getProductNumber());
			//customderOrderDetail productCount
			customerOrderDetailDto.setProductCount(1);
			
			//customderOrderDetail productPrice
			customerOrderDetailDto.setProductPrice(productList.get(i).getProductPrice());
			
			//customerOrderDetail orderDetailStatus
			customerOrderDetailDto.setOrderDetailStatus("1");
			
			customerOrderDetailDto.setRefundCheck("1");
			
			//list add
			customerOrderDetailList.add(customerOrderDetailDto);
			
		}
			

			//CustomerORderDetailInsert
			customerOrderDetailResult=customerOrderDetailDao.insertOrderDetail(customerOrderDetailList);
		
			//cart delete
			cartDeleteResult=cartDao.deleteCartInfo(cartDto);
		
		
		hashMap.put("customerOrderDaoResult", customerOrderDaoResult);
		hashMap.put("customerOrderDetailResult", customerOrderDetailResult);
		hashMap.put("cartDeleteResult", cartDeleteResult);
		
		return hashMap;
	}
	
	@ResponseBody
	@RequestMapping("/ProductIncreaseShowCount.do")
	public Map<String, Object> productIncreaseShowCount(ProductDto productDto) {
		int result=0;
		result=productDao.productIncreaseShowCount(productDto);
		
		 
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		
		return hashMap;
	}
	
	@ResponseBody
	@RequestMapping("/ShowProduct.do")
	public Map<String, Object> showProduct(ProductDto productDto) {
	
		
		List<ProductDto> productList=productDao.getProduct(productDto);
		
		
		 
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		hashMap.put("productList", productList);
		return hashMap;
	}
	
	@RequestMapping("/MainSearch.do")
	@ResponseBody
	public Map<String, Object> mainSearch(SearchDto searchDto) {

		Map<String, Object> hashMap = null;
		log.info("SearchDto={}",searchDto);
		String searchWord = searchDto.getSearchWord();
		
		if(searchWord.equals("blank"))
			searchWord="";
		
	
		List<ProductDto> productList=null;
	
		productList = productDao.getSearchProductList(searchDto);
		hashMap = new HashMap<String, Object>();
		// log.info("galleryList={}",galleryList);
		hashMap.put("productDtoList", productList);
		
		
		hashMap.put("searchWord", searchWord);
		// hashMap.put("totalReply", totalReply);
		return hashMap;
	}
	
	@RequestMapping("/GetCustomerOrderSearch.do")
	@ResponseBody
	public Map<String, Object> getCustomerOrderSearch(HttpSession Session) {
		Map<String, Object> hashMap = null;
		hashMap = new HashMap<String, Object>();
		MemberDto loggedMember = (MemberDto) Session.getAttribute("loggedMember");
		
		List<CustomerOrderDto> orderList= customerOrderDao.getAllOrderList(loggedMember.getUserId());
		hashMap.put("orderList", orderList);
		return hashMap;
	}
	
	

}
