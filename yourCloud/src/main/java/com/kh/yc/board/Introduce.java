package com.kh.yc.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Introduce {

	@RequestMapping("intro")
	public String intro() {
		
		
		
		return "main/intro";
		
	}
	
	
}
