package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import services.TestService;

@Controller
public class TestController {
	@Autowired
	TestService ts;
}