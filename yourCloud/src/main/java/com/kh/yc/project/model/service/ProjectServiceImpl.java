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
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.dao.ProjectDao;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.ExcelUtil;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;

@Service
public class ProjectServiceImpl implements ProjectService{
	//게시물 목록 갯수 조회용 메소드
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	ProjectDao pd;
	
	@Override
	public int getListCount() throws ProjectSelectListException {

		int listCount = pd.getListCount(sqlSession);
		
		return listCount;
	}

	@Override
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException {
		
		ArrayList<Project> list = pd.selectBoardList(sqlSession, pi); 
		
		return list;
	}
	@Override
	public ArrayList<Project> selectProjectList2(PageInfo pi,Member m) throws ProjectSelectListException {
		
		ArrayList<Project> list = pd.selectBoardList2(sqlSession, pi,m); 
		
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList(int projectNo) {
		ArrayList<Project> list = pd.selectSupportList(sqlSession,projectNo); 
		return list;
	}

	//게시판 상세보기 메소드
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
		ArrayList<Project> list = pd.selectSupportList2(sqlSession,sl); 
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList3(SupportList sl) {
		ArrayList<Project> list = pd.selectSupportList3(sqlSession,sl); 
		return list;
	}

	
	//프로젝트 리워드 종류 출력 메소드
	@Override
	public ArrayList<Project> receipt(int bNum) {
		ArrayList<Project> list = pd.receipt(sqlSession,bNum); 
		return list;
	}

	@Override
	public ArrayList<Integer> receipt2(int bNum) {
		ArrayList<Integer> count = pd.receipt2(sqlSession,bNum); 
		return count;
	}


	//좋아요 기능
	@Override
	public int insertLike(Interest inter) {
		
		return pd.insertLike(sqlSession, inter);
	}

	@Override
	public int deleteLike(Interest inter) {
		
		return pd.deleteLike(sqlSession,inter);
	}

	//좋아요 유무
	@Override
	public int likeCount(Interest inter) {
		
		return pd.likeCount(sqlSession, inter);
  }


	@Override
	public ArrayList<SupportList> selectSupportListExcel(int bNum) {
		ArrayList<SupportList> list = pd.selectSupportListExcel(sqlSession,bNum); 
		return list;

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
                
                //map.put("IDCOL", ""+ExcelUtil.cellValue(row.getCell(0)));
                map.put("NAMECOL", ""+ExcelUtil.cellValue(row.getCell(1)));
                map.put("VALUECOL", ""+ExcelUtil.cellValue(row.getCell(2)));
                System.out.println("map"+map);
                //신규삽입
                pd.updateDB(sqlSession,map);
                System.out.println("3333333");
            }
 
          
            //데이터가져옵니다.
            list = pd.testDbList(sqlSession,map);
            
        }catch(Exception e){
         
        }
        
        return list;


		
	}

	

}
