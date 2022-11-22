package com.petmily.admin.command;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.admin.dao.PostingDAO;
import com.petmily.admin.dto.PagingDTO;
import com.petmily.admin.dto.PostingDTO;

public class PostingCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
//삭제부분 command 시작
		if(request.getParameter("inputtype") == null) {
			
		}
		else if(request.getParameter("inputtype").equals("삭제")) {
			String[] deletepid = request.getParameterValues("deletecheck");
			int[] pid = new int[deletepid.length];
			for(int i=0; i<deletepid.length; i++) {
				pid[i] = Integer.parseInt(deletepid[i]);
			}
			
			String params="";
			for(int i=0; i<pid.length;i++) {
				params += pid[i];
				if(i < pid.length-1)
					params += ", ";
			}
			PostingDAO dao2 = new PostingDAO();
			dao2.delete(params);
			
		}
//삭제부분 command 끝
		
		PostingDAO dao = new PostingDAO();
		
		int cPage = 0;
		int pageLength = 5;
		int totalRows = 0;
		int rowLength=5;
		String tempPage = request.getParameter("page");
		String pcategory_temp1 = request.getParameter("pcategory");
		String pcategory_temp2 = (String) request.getAttribute("pcategory");
		String pcategory = "";
		String option = request.getParameter("option");
		String query = request.getParameter("query");
		
		
		if(pcategory_temp1 == null || pcategory_temp1.equals("")) {
			pcategory = pcategory_temp2;
		}
		
		if(pcategory_temp2 == null || pcategory_temp2.equals("")) {
			pcategory = pcategory_temp1;
		}
		
		if(option == null) {
			option = "ptitle";
		}
		if(query == null) {
			query = "";
		}
		
		if(tempPage == null || tempPage.length()==0) {
			cPage = 1;
		}
		try {
			cPage = Integer.parseInt(tempPage);
		} catch (Exception e) {
			cPage = 1;
		}
		
		
		
//		if(pcategory.equals("all")) {
//			totalRows = dao.postingListRow(pcategory);
//			
//			PagingDTO dto =  dao.postingListPaging(cPage, totalRows, pageLength);
//			System.out.println("t:"+totalRows);
//		ArrayList<PostingDTO> dtos = dao.postingAllGetList(cPage, rowLength, pcategory, option, query);
//		request.setAttribute("postingList", dtos);
//		request.setAttribute("totalRows", totalRows);// 전체갯수
//		request.setAttribute("paging", dto);
//		}else {
//			totalRows = dao.postingListRow(pcategory);
//			
//			PagingDTO dto =  dao.postingListPaging(cPage, totalRows, pageLength);
//		ArrayList<PostingDTO> dtos = dao.postingGetList(cPage, rowLength, pcategory, option, query);
//		request.setAttribute("postingList", dtos);
//		request.setAttribute("totalRows", totalRows);// 전체갯수
//		request.setAttribute("paging", dto);
//		}
		
		
		
		
		totalRows = dao.postingListRow(pcategory);
		PagingDTO dto =  dao.postingListPaging(cPage, totalRows, pageLength);
		ArrayList<PostingDTO> dtos = dao.postingGetList(cPage, rowLength, pcategory, option, query);
		request.setAttribute("postingList", dtos);
		request.setAttribute("totalRows", totalRows);// 전체갯수
		request.setAttribute("paging", dto);
		
		
		
		}
	

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {

		return 0;
	}

}
