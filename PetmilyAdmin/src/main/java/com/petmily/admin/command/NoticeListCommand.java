package com.petmily.admin.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.NoticeDAO;
import com.petmily.admin.dto.NoticeDTO;
import com.petmily.admin.dto.NoticePagingDTO;

public class NoticeListCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		NoticeDAO dao = new NoticeDAO();
		int cPage = 0;
		int pageLength = 5;
		int totalRows = 0;
		int rowLength=5;
		String tempPage = request.getParameter("page");
		
		if(tempPage == null || tempPage.length()==0) {
			cPage = 1;
		}
		try {
			cPage = Integer.parseInt(tempPage);
		} catch (Exception e) {
			cPage = 1;
		}

		totalRows = dao.noticeListRow();
		NoticePagingDTO dto =  dao.noticeListPaging(cPage,totalRows,pageLength);
		ArrayList<NoticeDTO> dtos = dao.noticeGetList(cPage, rowLength);
		
		
		request.setAttribute("paging", dto);
		request.setAttribute("noticeList", dtos);
		
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
