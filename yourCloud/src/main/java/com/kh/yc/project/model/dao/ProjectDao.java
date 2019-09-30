package com.kh.yc.project.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.category.model.vo.Encore;
import com.kh.yc.category.model.vo.Reply;
import com.kh.yc.category.model.vo.Report;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.OpenAlarm;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.reward.model.vo.RewardInfo;

public interface ProjectDao {
	//게시물 목록 조회용 메소드
	int getListCount(SqlSessionTemplate sqlSession) throws ProjectSelectListException;
	int getListCount4(SqlSessionTemplate sqlSession) throws ProjectSelectListException;
	//페이징 처리 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException;
	//게시판 상세보기
	public Project detailProject(SqlSessionTemplate sqlSession ,int projectNo);
	//나의메이커 조회
	public ArrayList<Project> selectBoardList2(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException;
	//서포트 조회용
	ArrayList<Project> selectSupportList(SqlSessionTemplate sqlSession, int projectNo);

	//서포터 정렬
	ArrayList<Project> selectSupportList2(SqlSessionTemplate sqlSession, SupportList sl);
	ArrayList<Project> selectSupportList3(SqlSessionTemplate sqlSession, SupportList sl);
	//프로젝트의 리워드 종류 출력 메소드
	ArrayList<Project> receipt(SqlSessionTemplate sqlSession, int bNum);
	//리워드 수 count
	ArrayList<Integer> receipt2(SqlSessionTemplate sqlSession, int bNum);
	ArrayList<Project> memberCategory(SqlSessionTemplate sqlSession, String category);
	//좋아요 기능
	int insertLike(SqlSessionTemplate sqlSession, Interest inter);
	//좋아요 취소 기능
	int deleteLike(SqlSessionTemplate sqlSession, Interest inter);
	//좋이요 유무
	int likeCount(SqlSessionTemplate sqlSession, Interest inter);
	
	//엑셀 다운로드 메소드
	ArrayList<SupportList> selectSupportListExcel(SqlSessionTemplate sqlSession, int bNum);
	
	//신고하기 기능
	int insertReport(SqlSessionTemplate sqlSession, Report report);
	//신고여부
	int reportCount(SqlSessionTemplate sqlSession, Interest inter);

	//엑셀 데이터 삽입
void   updateDB(SqlSessionTemplate sqlSession,Map<String, Object> map);
	//엑셀 데이터 가져오기
	List<SupportList> testDbList(SqlSessionTemplate sqlSession,Map<String, Object> map);
	
	//카테고리 분류
	ArrayList<Project> sorttBoardList(SqlSessionTemplate sqlSession, PageInfo pi, String category);
	ArrayList<Project> selectSupportList4(SqlSessionTemplate sqlSession, SupportList sl);
	//펀든 돈 합계
	int sumFundMoney(SqlSessionTemplate sqlSession, Interest inter);
	
	int supportCount(SqlSessionTemplate sqlSession, Interest inter);
	
	String mainImg(SqlSessionTemplate sqlSession, Interest inter);
	
	String mainImg2(SqlSessionTemplate sqlSession, ArrayList<Project> list);

	void joinAlram(SqlSessionTemplate sqlSession, int bNum, int userNo,String phone);
	
	public RewardInfo rewardInfo(SqlSessionTemplate sqlSession, int projectNo);
	//의견 남기기
	int insertReply(SqlSessionTemplate sqlSession, Reply reply);
	//의견 조회
	ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int projectNo);

	//서포터 리스트
	ArrayList<Funding> fundList(SqlSessionTemplate sqlSession, int projectNo);

  
	ArrayList<Project> memberCategories(SqlSessionTemplate sqlSession, ArrayList<String> categoryList);
	//문자알림
	List<OpenAlarm> getCountAlarm(SqlSessionTemplate sqlSession, String present2);
	//문자알림2
	List<OpenAlarm> getCountAlarm2(SqlSessionTemplate sqlSession, int projectNo);
	int getListCount2(SqlSessionTemplate sqlSession, int userNo);
	//앵콜 신청
	int insertEncore(SqlSessionTemplate sqlSession, Encore encore);
	//앵콜수 카운트
	int encoreCount(SqlSessionTemplate sqlSession, Interest inter);
	//리워드 리스트
	ArrayList<Reward> rewardList(SqlSessionTemplate sqlSession, int projectNo);
	//메이커 이미지
	String makerImg(SqlSessionTemplate sqlSession, Interest inter);
	//정렬 페이징
	int getSortListCount(SqlSessionTemplate sqlSession, String category);
	
	void updateReport(SqlSessionTemplate sqlSession, Report report);





}