package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.PagingDTO;
import com.petmily.customer.dto.PostingDTO;
import com.petmily.customer.dto.UserDTO;

public class MypageWriteListCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserDAO udao = new UserDAO();
		PostingDAO pdao = new PostingDAO();
		
		int cPage = 0;
		int pageLength = 5;
		int totalRows = 0;
		int rowLength=5;
		UserDTO udto = (UserDTO)session.getAttribute("user");
		String uid = udto.getUid();
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
		
		totalRows = pdao.postingListRow(pcategory);
		PagingDTO dto =  pdao.postingListPaging(cPage, totalRows, pageLength);
		ArrayList<PostingDTO> dtos = pdao.postingMypageWriteList(cPage, rowLength, uid, option, pcategory, query);
				
		request.setAttribute("paging", dto);
		request.setAttribute("postingList", dtos);
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		return 0;
	}

}
