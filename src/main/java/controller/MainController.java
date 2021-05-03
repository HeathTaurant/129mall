package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/Main/Side/Main")
	public String handleStep1() {
		return "Main/Side/Main";
	}
}
