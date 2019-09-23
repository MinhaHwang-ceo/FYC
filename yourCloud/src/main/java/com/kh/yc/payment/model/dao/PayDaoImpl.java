package com.kh.yc.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.payment.model.vo.Payment;
import com.kh.yc.project.model.vo.Project;

@Repository
public class PayDaoImpl implements PayDao {

	@Override
	public void updateProjectSuccess(SqlSessionTemplate sqlSession) {
		sqlSession.update("Project2.updateProjectSuccess");
	}

	@Override
	public ArrayList<Member> paySuccessMember(SqlSessionTemplate sqlSession) {
		ArrayList<Member> list = (ArrayList)sqlSession.selectList("Member.paySuccessMember");

		return list;
	}

	@Override
	public ArrayList<Project> fundSuccessProject(SqlSessionTemplate sqlSession) {
		ArrayList<Project> list = (ArrayList)sqlSession.selectList("Project2.fundSuccessProject");
		return list;
	}

	@Override
	public ArrayList<Funding> fundingList(SqlSessionTemplate sqlSession, ArrayList<Project> fundSuccessProject) {
		ArrayList<Funding> list = (ArrayList)sqlSession.selectList("Project2.fundingList", fundSuccessProject);
		return list;
	}

	@Override
	public void insertFundingSuccess(SqlSessionTemplate sqlSession, ArrayList<Funding> fundingList) {
		sqlSession.insert("Project2.insertFundingSuccess", fundingList);
	}

	@Override
	public void insertPayment(SqlSessionTemplate sqlSession, Payment pay) {
		sqlSession.insert("Project2.insertPayment", pay);
		
	}

	@Override
	public Payment selectRePay(SqlSessionTemplate sqlSession, String merchantUid) {
		return sqlSession.selectOne("Project2.selectRePay", merchantUid);
	}

	@Override
	public void updatePayStatus(SqlSessionTemplate sqlSession, Payment pay) {
		sqlSession.update("Project2.updatePayStatus", pay);
	}

	@Override
	public int insertFund(SqlSessionTemplate sqlSession, Funding fund) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Project2.insertFund", fund);
	}

	@Override
	public void insertDelivery(SqlSessionTemplate sqlSession, Delivery delivery) {
		// TODO Auto-generated method stub
		sqlSession.insert("Project2.insertDelivery", delivery);
	}

	@Override
	public void insertDeliveryStatus(SqlSessionTemplate sqlSession, Delivery delivery) {
		sqlSession.insert("Project2.insertDeliveryStatus", delivery);
	}
}
