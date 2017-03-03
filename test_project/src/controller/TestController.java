package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import services.TestService;

@Controller
public class TestController {
	@Autowired
	TestService ts;
	
	public ModelAndView listHandle(){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}