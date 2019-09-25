package com.kh.yc.project.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.category.model.vo.Reply;
import com.kh.yc.category.model.vo.Report;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.OpenAlarm;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;
import com.kh.yc.reward.model.vo.RewardInfo;

@Repository
public class ProjectDaoImpl implements ProjectDao{

	@Override
	public int getListCount(SqlSessionTemplate sqlSession) throws ProjectSelectListException{
		
		int result = 0;
		result = sqlSession.selectOne("Project2.selectListCount");
		
		return result;
	}

	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException {

		ArrayList<Project> list =null;
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Project2.selectProjectList",null,rowBounds);
		
		return list;
	}
	
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> selectBoardList2(SqlSessionTemplate sqlSession, PageInfo pi,Member m) throws ProjectSelectListException {

		ArrayList<Project> list =null;
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Project2.selectProjectList2",rowBounds);
		
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList(SqlSessionTemplate sqlSession, int projectNo) {

		ArrayList<Project> list =null;
	
		list = (ArrayList) sqlSession.selectList("Project2.selectSupportList",projectNo);
		
		return list;
	}

	//게시판 상세보기
	@SuppressWarnings("unchecked")
	@Override
	public Project detailProject(SqlSessionTemplate sqlSession, int projectNo) {

		return sqlSession.selectOne("Project2.detailProject",projectNo);
	}

	@Override
	public ArrayList<Project> memberCategory(SqlSessionTemplate sqlSession, String category) {
		
		return (ArrayList)sqlSession.selectList("Project2.memberCategory", category);
	}

	@Override
	public ArrayList<Project> selectSupportList2(SqlSessionTemplate sqlSession, SupportList sl) {
		ArrayList<Project> list =null;
		System.out.println("SL:::::::::"+sl);
		if(sl.getStatus().equals("before")) {
		list = (ArrayList) sqlSession.selectList("Project2.orderList1",sl);
		}
		if(sl.getStatus().equals("complete")){
			list = (ArrayList) sqlSession.selectList("Project2.orderList2",sl);
		}if(sl.getStatus().equals("all")) {
			
			list = (ArrayList) sqlSession.selectList("Project2.selectSupportList",sl);
			
		}
		
		
		
		return list;
	}

	
	@Override
	public ArrayList<Project> selectSupportList3(SqlSessionTemplate sqlSession, SupportList sl) {
		ArrayList<Project> list =null;
		System.out.println("SL:::::::::"+sl);
		if(sl.getStatus().equals("before")) {
		list = (ArrayList) sqlSession.selectList("Project2.orderList3",sl);
		}
		if(sl.getStatus().equals("complete")){
			list = (ArrayList) sqlSession.selectList("Project2.orderList4",sl);
		}if(sl.getStatus().equals("all")) {
			
			list = (ArrayList) sqlSession.selectList("Project2.selectSupportList",sl);
			
		}
		
		
		
		return list;
	}

	@Override
	public ArrayList<Project> receipt(SqlSessionTemplate sqlSession, int bNum) {
		ArrayList<Project> list =null;
		
		list = (ArrayList) sqlSession.selectList("Project2.receipt",bNum);
		
		return list;
	}

	@Override
	public ArrayList<Integer> receipt2(SqlSessionTemplate sqlSession, int bNum) {
		ArrayList<Integer> count =null;
		
		count = (ArrayList) sqlSession.selectList("Project2.receipt2",bNum);
		
		return count;
	}
	
	//좋아요 기능
	@Override
	public int insertLike(SqlSessionTemplate sqlSession,Interest inter) {
		
		return sqlSession.insert("Project2.insertLike",inter);
	}

	//좋아요 취소 기능
	@Override
	public int deleteLike(SqlSessionTemplate sqlSession, Interest inter) {
		
		return sqlSession.delete("Project2.deleteLike",inter);
	}

	//좋아요 유무 
	@Override
	public int likeCount(SqlSessionTemplate sqlSession, Interest inter) {
		
		//System.out.println("dao에서 좋아요 유무 "+inter);
		
		return sqlSession.selectOne("Project2.likeCount",inter);
	}

	@Override
	public ArrayList<SupportList> selectSupportListExcel(SqlSessionTemplate sqlSession, int bNum) {
		ArrayList<SupportList> list =null;
		
		list = (ArrayList) sqlSession.selectList("Project2.selectSupportListExcel",bNum);
		
		return list;
	}


	//신고하기 기능
	@Override
	public int insertReport(SqlSessionTemplate sqlSession, Report report) {

		return sqlSession.insert("Report.insertReport",report);
	}

	//신고여부
	@Override
	public int reportCount(SqlSessionTemplate sqlSession, Interest inter) {
		
		return sqlSession.selectOne("Report.reportCount",inter);
	}

	
	@Override
	public void updateDB(SqlSessionTemplate sqlSession,Map<String, Object> map) {
		 sqlSession.update("Project2.updateDb",map);
	 sqlSession.update("Project2.updateDb2",map);

	}

	@Override
	public List<SupportList> testDbList(SqlSessionTemplate sqlSession,Map<String, Object> map) {
	ArrayList<SupportList> list =null;
		
		list = (ArrayList) sqlSession.selectList("Project2.selectSupportListExcel",map);
		
		return list;

	}

	//카테고리 분류
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> sorttBoardList(SqlSessionTemplate sqlSession, PageInfo pi, String category) {
		
		ArrayList<Project> list =null;
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		//System.out.println("dao에서 category 코드는?"+category);
		
		list = (ArrayList) sqlSession.selectList("Project2.sortProjectList",category,rowBounds);
		
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList4(SqlSessionTemplate sqlSession, SupportList sl) {
		ArrayList<Project> list =null;
		
			list = (ArrayList) sqlSession.selectList("Project2.selectSupportList4",sl);
			
	
		
		
		return list;
	}

	@Override
	public int sumFundMoney(SqlSessionTemplate sqlSession, Interest inter) {
	
		return sqlSession.selectOne("Project2.sumFundMoney",inter);
	}

	@Override
	public int supportCount(SqlSessionTemplate sqlSession, Interest inter) {
	 
		return sqlSession.selectOne("Project2.supportCount",inter);
	}

	@Override
	public String mainImg(SqlSessionTemplate sqlSession, Interest inter) {
		 
		return sqlSession.selectOne("Project2.mainImg",inter);
	}

	@Override
	public String mainImg2(SqlSessionTemplate sqlSession, ArrayList<Project> list) {
	 
		return sqlSession.selectOne("Project2.mainImg2",list);
	}

	@Override
	public void joinAlram(SqlSessionTemplate sqlSession, int bNum, int userNo,String phone) {
		System.out.println("bNum::::::::::::::"+bNum);
		OpenAlarm oa= new OpenAlarm();
		oa.setMemberNo(userNo);
		oa.setProjectNo(bNum);
		oa.setMemberPhone(phone);
		
		int a  = sqlSession.insert("Project2.joinAlram",oa);

		
	}

	@SuppressWarnings("unchecked")
	@Override
	public RewardInfo rewardInfo(SqlSessionTemplate sqlSession, int projectNo) {
		 
		return sqlSession.selectOne("Project2.rewardInfo",projectNo);
	}

	//의견 남기기 기능
	@Override
	public int insertReply(SqlSessionTemplate sqlSession, Reply reply) {
		
		return sqlSession.insert("Project2.insertReply",reply);
	}

	//의견 리스트 출력
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int projectNo) {
		
		ArrayList<Reply> reply = null;
		
		reply = (ArrayList) sqlSession.selectList("Project2.selectReplyList",projectNo);
		
		return reply;
	}


}

