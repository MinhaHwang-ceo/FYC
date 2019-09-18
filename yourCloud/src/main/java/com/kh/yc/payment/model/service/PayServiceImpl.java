package com.kh.yc.payment.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.kh.yc.member.model.vo.Member;
import com.kh.yc.payment.model.dao.PayDao;

@Service
@EnableScheduling
public class PayServiceImpl implements PayService {
	@Autowired
	PayDao pd;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	//@Scheduled(cron = "10 * * * * MON-FRI")
	public void testJobMethod() {
		System.out.println("RRRR");
		ArrayList<Member> m = pd.updateProjectSuccess(sqlSession);
	}

}
