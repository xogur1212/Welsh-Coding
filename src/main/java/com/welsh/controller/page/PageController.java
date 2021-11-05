package com.welsh.controller.page;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.welsh.model.MemberDto;
import com.welsh.model.ProductImageListDto;

@Controller
public class PageController {

	@Autowired
	MemberDto loggedMember;

	//gahee
	
	@RequestMapping("/LoginForm.do")
	public String loginForm() {
		return "junsic/login";
	}
	
	@RequestMapping("/RegisterForm.do")
	public String registerForm() {
		return "junsic/register";
	}
	
	@RequestMapping("/PwSearchForm.do")
	public String pwSearchForm() {
		return "final/pwSearch";
	}
	
	
	//test
	
	
	
	@RequestMapping("/MemberDeleteForm.do")
	public String memberDeleteForm() {
		return "junsic/memberDelete";
	}
	

	
	
		
		
	

	
	
	
	
	
	//final
	
	
	//admin
	
	@RequestMapping("/OrderSearch.do")
	public String orderSearch() {
		return "final/admin/orderSearch";
	}
	
	@RequestMapping("/Sales.do")
	public String sales() {
		return "final/admin/sales";
	}

	@RequestMapping("/ProductImageInsertForm.do")
	public String productImageInsertForm() {
		
		return "final/admin/productInsertForm";
	}
	
	@RequestMapping("/ProductImageUpdateForm.do")
	public String productImageUpdateForm() {
		
		return "final/admin/productUpdateForm";
	}
	
	@RequestMapping("/Products.do")
	public String products() {
		return "final/admin/products";
	}
	
	
	@RequestMapping("/ProductInfo.do")
	public String productInfo() {
		return "final/product/product";
	}
	
	@RequestMapping("/OrderDetailSearch.do")
	public String orderDetailSearch() {
		return "final/admin/orderDetailSearch";
	}
	
	
	@RequestMapping("/AdminPage.do")
	public String adminPage() {
		return "final/admin/admin";
	}
	
	
	@RequestMapping("/ProductEditPage.do")
	public String productEditPage() {
		return "final/admin/edit";
	}
	
	@RequestMapping("/Upload.do")
	public String upload() {
		return "final/admin/upload";
	}
	
	//customer
	
	@RequestMapping("/Customer.do")
	public String customer() {
		return "final/customer";
	}
	
	@RequestMapping("/Order.do")
	public String order() {
		return "final/order";
	}
	

	@RequestMapping("/PayMentPage.do")
	public String payMentPage() {
		return "final/payment";
	}
	
	/*
	@RequestMapping("/MyInfo.do")
	public String myInfo() {
		return "final/myInfo";
	}
	*/
	//event
	@RequestMapping("/LivingProductEvent.do")
	public String livingProductEvent() {
		return "final/event/livingProductEvent";
	}
	
	@RequestMapping("/NewProductEvent.do")
	public String newProductEvent() {
		return "final/event/newProductEvent";
	}
	
	
	//cart & order 
	
	@RequestMapping("/CartPage.do")
	public String cartPage() {
		return "final/cartorder/cart";
	}
	
	@RequestMapping("/CustomerOrderSearch.do")
	public String customerOrderSearch() {
		return "final/orderSearch";
	}
	
	
	
	//product
	
	
	
	
	
	
		
		
		
		
}
