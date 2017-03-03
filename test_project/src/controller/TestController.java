package controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.TestService;

@Controller
@RequestMapping("/views/beer")
public class TestController {
	@Autowired
	TestService ts;



	@RequestMapping("/result")
	public ModelAndView listHandle() {
		List allList = ts.getAll();
		List alchor  = ts.getalchorList();
		List ipa = ts.getStyleList("IPA");
		List stout = ts.getStyleList("STOUT");
		List pilsner = ts.getStyleList("PILSNER");
		List ale = ts.getStyleList("ALE");
		List score = ts.getScoreList();
		
		ModelAndView mav = new ModelAndView("/result.jsp");
		//리스트 목록
		mav.addObject("allList", allList);
		mav.addObject("alchorList", alchor);
		mav.addObject("styleListI", ipa);
		mav.addObject("styleListS", stout);
		mav.addObject("styleListP", pilsner);
		mav.addObject("styleListA", ale);
		mav.addObject("scoreList", score);
		
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