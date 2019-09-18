package com.kh.yc.project.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Project;

public interface ProjectService {

	//게시물 목록 갯수 조회용 메소드
	int getListCount() throws ProjectSelectListException;
	//페이징 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException;
	//상세보기 메소드
	Map<String, Project> detailProject();
	//나의 메이커 게시글조회용
	public ArrayList<Project> selectProjectList2(PageInfo pi, Member m) throws ProjectSelectListException;
	//서포터 정보 조회
	ArrayList<Project> selectSupportList(int projectNo);
	ArrayList<Project> memberCategory(String category);;

}
