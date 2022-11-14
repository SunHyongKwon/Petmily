package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.ApplyDAO;
import com.petmily.customer.dto.UserDTO;

public class postingApplyInsertCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO)session.getAttribute("user");
		
		String user_uid = udto.getUid();
		int posting_pid = Integer.parseInt(request.getParameter("pid"));
		String posting_user_uid = request.getParameter("user_uid");
		String aptitle = request.getParameter("aptitle");
		String apcontent = request.getParameter("apcontent");
		
		ApplyDAO adao = new ApplyDAO();
		adao.postingApplyInsert(user_uid, posting_pid, posting_user_uid, aptitle, apcontent);
		
		
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
