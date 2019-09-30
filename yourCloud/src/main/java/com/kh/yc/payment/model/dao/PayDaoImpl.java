package com.kh.yc.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.payment.model.vo.Payment;
import com.kh.yc.payment.model.vo.Sponsor;
import com.kh.yc.project.model.vo.Project;

@Repository
public class PayDaoImpl implements PayDao {

	@Override
	public void updateProjectSuccess(SqlSessionTemplate sqlSession) {
		sqlSession.update("Project2.updateProjectSuccess");
	}
	
	@Override
	public void insertAdjust(SqlSessionTemplate sqlSession,  ArrayList<Project> fundSuccessProject) {
		for(int i = 0; i < fundSuccessProject.size(); i++) {
			sqlSession.insert("Project.insertAdjust", fundSuccessProject.get(i));
		}
	}

	@Override
	public ArrayList<Member> paySuccessMember(SqlSessionTemplate sqlSession) {
		ArrayList<Member> list = (ArrayList) sqlSession.selectList("Member.paySuccessMember");

		return list;
	}

	@Override
	public ArrayList<Project> fundSuccessProject(SqlSessionTemplate sqlSession) {
		ArrayList<Project> list = (ArrayList) sqlSession.selectList("Project2.fundSuccessProject");
		return list;
	}

	@Override
	public ArrayList<Funding> fundingList(SqlSessionTemplate sqlSession, ArrayList<Project> fundSuccessProject) {
		ArrayList<Funding> list = (ArrayList) sqlSession.selectList("Project2.fundingList", fundSuccessProject);
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
	public int insertFund(SqlSessionTemplate sqlSession, Funding funding) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Project2.insertFund", funding);
	}

	@Override
	public void insertSponsor(SqlSessionTemplate sqlSession, Sponsor sp) {
		sqlSession.insert("Project2.insertSponsor", sp);
	}

	@Override
	public int insertDelivery(SqlSessionTemplate sqlSession, Delivery delivery) {
		return sqlSession.insert("Project2.insertDelivery", delivery);
	}

	@Override
	public int insertDeliveryStatus(SqlSessionTemplate sqlSession, Delivery delivery) {
		return sqlSession.insert("Project2.insertDeliveryStatus", delivery);
	}

	@Override
	public void updateProjectFail(SqlSessionTemplate sqlSession) {
		sqlSession.update("Project2.updateProjectFail");
	}

	@Override
	public ArrayList<Funding> fundFailProject(SqlSessionTemplate sqlSession) {
		ArrayList<Funding> list = (ArrayList)sqlSession.selectList("Project2.fundFail");
		return list;
	}

	@Override
	public ArrayList<Payment> failMerchantID(SqlSessionTemplate sqlSession, ArrayList<Funding> fundFailProject) {
		ArrayList<Payment> list = new ArrayList<Payment>();
		
		for(Funding f : fundFailProject) {
			list.addAll((ArrayList)sqlSession.selectList("Project2.selectFailMerchant", f));
		}
		return list;
	}

	@Override
	public int updateProjectOpen(SqlSessionTemplate sqlSession) {
		return sqlSession.update("Project2.updateProjectOpen");
	}

	@Override
	public Funding selectFund(SqlSessionTemplate sqlSession, Funding fund) {
		return sqlSession.selectOne("Project2.selectFund", fund);
	}

	@Override
	public Payment selectPay(SqlSessionTemplate sqlSession, Funding fund) {
		return sqlSession.selectOne("Project2.selectPay", fund);
	}

	@Override
	public void deletePay(SqlSessionTemplate sqlSession, Payment pay) {
		sqlSession.delete("Project2.deletePay", pay);
	}

	@Override
	public void deleteFund(SqlSessionTemplate sqlSession, Funding fund) {
		sqlSession.delete("Project2.deleteFund", fund);
	}

	@Override
	public void deleteDeliveryStatus(SqlSessionTemplate sqlSession, Payment pay) {
		sqlSession.delete("Project2.deleteDeliveryStatus", pay);
	}

	@Override
	public void deleteDelivery(SqlSessionTemplate sqlSession, Payment pay) {
		sqlSession.delete("Project2.deleteDelivery", pay);
	}

	@Override
	public void deleteSpon(SqlSessionTemplate sqlSession, Funding fund) {
		sqlSession.delete("Project2.deleteSpon", fund);
	}

}