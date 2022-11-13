package com.petmily.customer.command;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dto.PagingDTO;
import com.petmily.customer.dto.PostingDTO;

public class PostingCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
//		String user_uid = (String) session.getAttribute("user.uid");
		PostingDAO dao = new PostingDAO();
		
		int cPage = 0;
		int pageLength = 5;
		int totalRows = 0;
		int rowLength=5;
		String tempPage = request.getParameter("page");
		String pcategory_temp1 = request.getParameter("pcategory");
		String pcategory_temp2 = (String) request.getAttribute("pcategory");
		String pcategory = "";
		
		if(pcategory_temp1 == null || pcategory_temp1.equals("")) {
			pcategory = pcategory_temp2;
		}
		
		if(pcategory_temp2 == null || pcategory_temp2.equals("")) {
			pcategory = pcategory_temp1;
		}
		
		if(tempPage == null || tempPage.length()==0) {
			cPage = 1;
		}
		try {
			cPage = Integer.parseInt(tempPage);
		} catch (Exception e) {
			cPage = 1;
		}
		totalRows = dao.postingListRow(pcategory);
		PagingDTO dto =  dao.postingListPaging(cPage, totalRows, pageLength);
		ArrayList<PostingDTO> dtos = dao.postingGetList(cPage, rowLength, pcategory);
		
		
		request.setAttribute("paging", dto);
		request.setAttribute("postingList", dtos);
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {

		return 0;
	}

}
