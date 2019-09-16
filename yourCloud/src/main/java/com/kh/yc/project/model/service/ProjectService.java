package com.kh.yc.project.model.service;

import java.util.ArrayList;

import com.kh.yc.project.model.vo.Project;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.project.model.exception.ProjectSelectListException;

public interface ProjectService {

	//게시물 목록 갯수 조회용 메소드
	int getListCount() throws ProjectSelectListException;
	//페이징 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException;

}
