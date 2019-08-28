package com.kh.yc.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeList {
@RequestMapping("notice.bo")
	public String Notice() {

	return "board/notice";
	}
}
