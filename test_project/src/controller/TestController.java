package controller;


import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.TestService;

@Controller
public class TestController {
	@Autowired
	TestService ts;
	
	@RequestMapping("/beer/list")
	public ModelAndView listHandle(){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("/beer/search")
	public ModelAndView searchHandle(@RequestParam Map map){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("/beer/insert")
	public ModelAndView insertHandle(){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}