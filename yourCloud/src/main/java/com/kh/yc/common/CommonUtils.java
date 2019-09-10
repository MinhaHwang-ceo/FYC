package com.kh.yc.common;

import java.util.UUID;

public class CommonUtils {
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
		// UUID : 자바 밑에 있는 클래스로, 32비트로 랜덤 문자열을 리턴함
		// UUID 형태로 리턴하기 때문에 toString으로 변환해야 함
		// -가 들어가있으면 지워버림
	}
}
