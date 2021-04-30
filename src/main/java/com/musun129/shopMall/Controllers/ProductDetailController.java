package com.musun129.shopMall.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musun129.shopMall.Dto.ItemDto;
import com.musun129.shopMall.Dto.Order_detailDto;

@Controller
public class ProductDetailController {

	
	
	@PostMapping("/addToCart")
	public String addToCart(@ModelAttribute Order_detailDto order_detail,Model model ) {
		model.addAttribute("order_detail",order_detail);
		
		return "Mypage/CartList";
	}
	
	
	
	
	
	@GetMapping("/buyNow")
	public String buyNow(@ModelAttribute Order_detailDto order_detail, Model model) {
		model.addAttribute("order_detail",order_detail);
		
		return "Mypage/Pay";
	}
	
}

    
 