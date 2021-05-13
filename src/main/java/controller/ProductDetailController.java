package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import productDetail.ItemRequestDto;

@Controller
public class ProductDetailController {

	@GetMapping("/Productdetail/addToCart")
	public String addToCart(ItemRequestDto itemRequestDto, Model model) {
		model.addAttribute("itemRequestDto",itemRequestDto);
		return "Mypage/CartList";
	}

	@GetMapping("/buyNow")
	public String buyNow(ItemRequestDto itemRequestDto, Model model) {
        model.addAttribute("itemRequestDto",itemRequestDto);
		
		return "Mypage/Buy";
	}
	@GetMapping("/review")
	public String review() {

		return "Productdetail/ReviewRegisterForm";
	}

	@GetMapping("/Productdetail/main")
	public String main() {

		return "Productdetail/main";
	}

}