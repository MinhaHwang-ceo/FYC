package com.kh.yc.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuideWrite {

	@RequestMapping("guideWrite.bo")
	public String Write() {

		return "board/guideWrite";
		}
	
}
