package com.kh.yc.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.member.model.vo.Member;

@Repository
public class PayDaoImpl implements PayDao {

	@Override
	public ArrayList<Member> updateProjectSuccess(SqlSessionTemplate sqlSession) {
		ArrayList<Member> list = null;
		sqlSession.update("Project2.updateProjectSuccess");
		
		return list;
	}

}
