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
		String ureply = request.getParameter("ureply");
		int plevel = 2;//댓글
		
		pdao.postingRyplyWriteAction(pid, ureply, plevel, user_uid);
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
