package com.kh.yc.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class GuideSelect {
	@RequestMapping("guideOne.bo")
	public String noticeOne() {

	return "board/guideOne";
	}

}
