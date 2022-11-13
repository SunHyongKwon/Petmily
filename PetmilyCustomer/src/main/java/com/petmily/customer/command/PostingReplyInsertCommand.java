package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.UserDTO;

public class PostingReplyInsertCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO)session.getAttribute("user");
		
		PostingDAO pdao = new PostingDAO();
		
		String user_uid = udto.getUid();
		String pid = request.getParameter("pid");
		String ptitle = request.getParameter("ptitle");
		String pcontent = request.getParameter("pcontent");
		String pimage1 = request.getParameter("pimage1");
		String pimage2 = request.getParameter("pimage2");
		String pimage3 = request.getParameter("pimage3");
		String pcategory = request.getParameter("pcategory");
		String plocation_basic = "null";
		String plocation_detail = request.getParameter("plocation_detail");
		int plevel = 2;//댓글
		
		pdao.postingWriteAction(ptitle, pcontent, pimage1, pimage2, pimage3, pcategory, plocation_detail, plevel, user_uid);
		
		
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
