package com.kh.yc.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeWrite {

		@RequestMapping("noticeWrite.bo")
		public String Write() {

			return "board/noticeWrite";
			}
}
