package com.kh.yc.project.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.category.model.vo.Encore;
import com.kh.yc.category.model.vo.Reply;
import com.kh.yc.category.model.vo.Report;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.dao.ProjectDao;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.ExcelUtil;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.OpenAlarm;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.reward.model.vo.RewardInfo;

@Service

public class ProjectServiceImpl implements ProjectService {
	 
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	ProjectDao pd;

	
	//게시물 목록 갯수 조회용 메소드
	@Override
	public int getListCount() throws ProjectSelectListException {

		int listCount = pd.getListCount(sqlSession);

		return listCount;
	}
	
	@Override
	public int getListCount2(int userNo)  {

		int listCount = pd.getListCount2(sqlSession,userNo);

		return listCount;
	}

	

	@Override
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException {

		ArrayList<Project> list = pd.selectBoardList(sqlSession, pi);

		return list;
	}

	@Override
	public ArrayList<Project> selectProjectList2(PageInfo pi) throws ProjectSelectListException {

		ArrayList<Project> list = pd.selectBoardList2(sqlSession, pi);

		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList(int projectNo) {
		ArrayList<Project> list = pd.selectSupportList(sqlSession, projectNo);
		return list;
	}

	// 게시판 상세보기 메소드
	@Override
	public Project detailProject(int projectNo) {

		String projectNo1 = Integer.toString(projectNo);

		return pd.detailProject(sqlSession, (Integer.parseInt(projectNo1)));
	}

	@Override
	public ArrayList<Project> memberCategory(String category) {
		// TODO Auto-generated method stub
		return pd.memberCategory(sqlSession, category);
	}

	@Override
	public ArrayList<Project> selectSupportList2(SupportList sl) {
		ArrayList<Project> list = pd.selectSupportList2(sqlSession, sl);
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList3(SupportList sl) {
		ArrayList<Project> list = pd.selectSupportList3(sqlSession, sl);
		return list;
	}

	// 프로젝트 리워드 종류 출력 메소드
	@Override
	public ArrayList<Project> receipt(int bNum) {
		ArrayList<Project> list = pd.receipt(sqlSession, bNum);
		return list;
	}

	@Override
	public ArrayList<Integer> receipt2(int bNum) {
		ArrayList<Integer> count = pd.receipt2(sqlSession, bNum);
		return count;
	}

	// 좋아요 기능
	@Override
	public int insertLike(Interest inter) {

		return pd.insertLike(sqlSession, inter);
	}

	//좋아요 취소 기능
	@Override
	public int deleteLike(Interest inter) {

		return pd.deleteLike(sqlSession, inter);
	}

	// 좋아요 유무
	@Override
	public int likeCount(Interest inter) {

		return pd.likeCount(sqlSession, inter);
	}
		

	@Override
	public ArrayList<SupportList> selectSupportListExcel(int bNum) {
		ArrayList<SupportList> list = pd.selectSupportListExcel(sqlSession, bNum);
		return list;

	}
	
	//신고하기
	@Override
	public int insertReport(Report report) {
		
		return pd.insertReport(sqlSession,report);
	}
	//신고여부
	@Override
	public int reportCount(Interest inter) {
		
		return pd.reportCount(sqlSession,inter);
	}

	@Override
	public List<SupportList>  getExcelUpload(String excelFile) {
		  
        Map<String, Object> map = new HashMap<String, Object>();
        List<SupportList> list = null;
        System.out.println("excelFile:::"+excelFile);
        try {
            System.out.println("excelFile:::"+excelFile);
            Workbook wbs = ExcelUtil.getWorkbook(excelFile);
            System.out.println("wbs:::"+wbs);
            Sheet sheet = (Sheet) wbs.getSheetAt(0);
            System.out.println("sheet:::"+sheet);
            
            
            //excel file 두번쨰줄부터 시작
            for (int i = sheet.getFirstRowNum() + 1; i <= sheet.getLastRowNum(); i++) {
                
                System.out.println("222222222222");
                
                Row row = sheet.getRow(i);
                
                map.put("projectNo", ""+ExcelUtil.cellValue(row.getCell(0)));
                map.put("fundNo", ""+ExcelUtil.cellValue(row.getCell(1)));
                map.put("memberName", ""+ExcelUtil.cellValue(row.getCell(2)));
                map.put("payState", ""+ExcelUtil.cellValue(row.getCell(3)));
                map.put("status", ""+ExcelUtil.cellValue(row.getCell(4)));
                map.put("invoiceNum", ""+ExcelUtil.cellValue(row.getCell(5)));
                System.out.println("map"+map);
                //신규삽입
                pd.updateDB(sqlSession,map);
                System.out.println("3333333");
            }
 
            //데이터가져옵니다.
            list = pd.testDbList(sqlSession,map);
            System.out.println("ddddddddddddddddd"+list.size());
            
        }catch(Exception e){
         
        }
        
        return list;


		
	}

	//카테고리 분류
	@Override
	public ArrayList<Project> sortProjectList(PageInfo pi, String category) {
		
		ArrayList<Project> list = pd.sorttBoardList(sqlSession, pi,category);
		
		//System.out.println("서비스에서 카테고리 코드는?"+category);
		
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList4(SupportList sl) {
		ArrayList<Project> list = pd.selectSupportList4(sqlSession, sl);
		return list;
	}

	@Override
	public int sumFundMoney(Interest inter) {
		
		return pd.sumFundMoney(sqlSession,inter);
	}

	@Override
	public int supportCount(Interest inter) {
		 
		return pd.supportCount(sqlSession,inter);
	}

	@Override
	public String mainImg(Interest inter) {
		 
		return pd.mainImg(sqlSession,inter);
	}

	@Override
	public String mainImg2(ArrayList<Project> list) {
		 
		return pd.mainImg2(sqlSession,list);
	}

	@Override
	public void joinAlram(int bNum, int userNo, String phone) {
	 pd.joinAlram(sqlSession, bNum,userNo,phone);

	}

	public RewardInfo rewardInfo(int projectNo) {
		
		String projectNo1 = Integer.toString(projectNo);
		
		return pd.rewardInfo(sqlSession, (Integer.parseInt(projectNo1)));
	}

	//의견 입력하기
	@Override
	public int insertReply(Reply reply) {
		 
		return pd.insertReply(sqlSession,reply);
	}
	//의견 조회
	@Override
	public ArrayList<Reply> selectReplyList(int projectNo) {
		
		ArrayList<Reply> reply = pd.selectReplyList(sqlSession,projectNo);
		
		return reply;
	}

	@Override
	public ArrayList<Funding> fundList(int projectNo) {
		
		ArrayList<Funding> fund = pd.fundList(sqlSession,projectNo);
		
		return fund;
}
  @Override
	public ArrayList<Project> memberCategories(ArrayList<String> categoryList) {
		// TODO Auto-generated method stub
		return pd.memberCategories(sqlSession, categoryList);
  }
  @Override
	public   List<OpenAlarm>  getCount(String present2) {

		  List<OpenAlarm>  reply = pd.getCountAlarm(sqlSession,present2);
		
		return reply;
		
		
	}

	@Override
	public List<OpenAlarm> getCount2(int projectNo) {
		  List<OpenAlarm>  reply = pd.getCountAlarm2(sqlSession,projectNo);
			
			return reply;
	}

	//앵콜신청
	@Override
	public int insertEncore(Encore encore) {
		 
		return pd.insertEncore(sqlSession,encore);
	}

	@Override
	public int encoreCount(Interest inter) {
		 
		return pd.encoreCount(sqlSession, inter);
	}

	@Override
	public ArrayList<Reward> rewardList(int projectNo) {
		
		ArrayList<Reward> Reward = pd.rewardList(sqlSession,projectNo);
		
		return Reward;
	}

	@Override
	public String makerImg(Interest inter) {
		 
		return pd.makerImg(sqlSession,inter);
	}

	@Override
	public int getSortListCount(String category) throws ProjectSelectListException {
		
		int getSortListCount = pd.getSortListCount(sqlSession,category);
		
		return getSortListCount;
	}


}
