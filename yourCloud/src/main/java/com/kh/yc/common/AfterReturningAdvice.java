package com.kh.yc.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/*
@Component
@Aspect*/
public class AfterReturningAdvice {
	// root-context에 있는 pointcut을 자바 클래스로 변환하면 이렇다.
	@Pointcut("execution(* com.kh.yc..*ServiceImpl.*(..))")
					//	리턴값 | 경로         | 클래스           . 메소드 ( 매개변수  )
	public void allPointcut() {}
	
	@AfterReturning(pointcut="allPointcut()", returning="returnObj")
	public void beforeLog(JoinPoint jp, Object returnObj) {
		System.out.println("u know nothing, john snow");
	}
}
