package com.petmily.customer.command;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dto.UserDTO;

public class PostingWriteInsertCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		PostingDAO dao = new PostingDAO();

		UserDTO udto = (UserDTO)session.getAttribute("user");
			
		String ptitle = request.getParameter("ptitle");
		String pcontent = request.getParameter("pcontent");
		String pimage1 = request.getParameter("pimage1");
		String pimage2 = request.getParameter("pimage2");
		String pimage3 = request.getParameter("pimage3");
		String pcategory = request.getParameter("pcategory");
		String plocation_basic = request.getParameter("plocation_basic");
		String plocation_detail = request.getParameter("plocation_detail");
		int plevel = 1; //게시물 1
		
		
		String user_uid = udto.getUid();
		String plocation = plocation_basic +" "+plocation_detail;
		
		
		dao.postingWriteAction(ptitle, pcontent, pimage1, pimage2, pimage3, pcategory, plocation, plevel, user_uid);
		
		return 0;
		
	}

}
