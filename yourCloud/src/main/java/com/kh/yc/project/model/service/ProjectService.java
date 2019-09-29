package com.kh.yc.project.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

public interface ProjectService {

	//게시물 목록 갯수 조회용 메소드
	int getListCount() throws ProjectSelectListException;
	//페이징 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException;
	//상세보기 메소드
	public Project detailProject(int projectNo);
	//나의 메이커 게시글조회용
	public ArrayList<Project> selectProjectList2(PageInfo pi) throws ProjectSelectListException;
	//서포터 정보 조회
	ArrayList<Project> selectSupportList(int bNum);
	//서포터 정렬
	ArrayList<Project> selectSupportList2(SupportList sl);
	ArrayList<Project> selectSupportList3(SupportList sl);
	
	//프로젝트의 리워드 종류 출력
	ArrayList<Project> receipt(int bNum);
	//리워드 count출력
	ArrayList<Integer> receipt2(int bNum);

	
	int getListCount2(int userNo);


	ArrayList<Project> memberCategory(String category);

	//좋아요 기능
	public int insertLike(Interest inter);
	//좋아요 취소 기능
	public int deleteLike(Interest inter);
	//좋아요 여부
	public int likeCount(Interest inter);

	//서포트리스트 출력
	ArrayList<SupportList> selectSupportListExcel(int bNum);

	//업로드 엑셀 위치파악 메소드
	List<SupportList> getExcelUpload(String string);;

	
	//신고하기 기능
	public int insertReport(Report report);
	//신고 여부
	public int reportCount(Interest inter);
	//신고수 프로젝트 업데이트
	//카제고리 분류
	ArrayList<Project> sortProjectList(PageInfo pi, String category);
  
	ArrayList<Project> selectSupportList4(SupportList sl);
	//펀든 돈 합계
	public int sumFundMoney(Interest inter);
	//서포터 수 카운드
	public int supportCount(Interest inter);
	
	public String mainImg(Interest inter);
	
	public String mainImg2(ArrayList<Project> list);

	void joinAlram(int bNum, int userNo,String phone);

	
	public RewardInfo rewardInfo(int projectNo);
	//의견 등록하기 기능
	public int insertReply(Reply reply);
	//의견 리스트
	ArrayList<Reply> selectReplyList(int projectNo);
	//서포터 리스트
	ArrayList<Funding> fundList(int projectNo);

	ArrayList<Project> memberCategories(ArrayList<String> categoryList);
	//문자알림1
	List<OpenAlarm> getCount(String present2);  
	//문자알림2
	List<OpenAlarm> getCount2(int projectNo);
	//앵콜신청
	public int insertEncore(Encore encore);
	//앵콜 수 카운트
	public int encoreCount(Interest inter);
	//리워드 리스트
	ArrayList<Reward> rewardList(int projectNo);
	//메이커 이미지
	public String makerImg(Interest inter);
	//정렬된 페이징
	int getSortListCount(String category) throws ProjectSelectListException;
	
	public void updateReport(Report report);
	


}
