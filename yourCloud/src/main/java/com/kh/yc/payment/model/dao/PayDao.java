package com.kh.yc.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.member.model.vo.Member;

public interface PayDao {

	ArrayList<Member> updateProjectSuccess(SqlSessionTemplate sqlSession);

}
