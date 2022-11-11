package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.admin.dao.NoticeDAO;


public class NoticeWriteCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String adid = (String)session.getAttribute("adid");
		String ntitle = request.getParameter("ntitle");
		String ncontent = request.getParameter("ncontent");
			
		NoticeDAO dao = new NoticeDAO();
		
			dao.noticeInsert(adid, ntitle, ncontent);			

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
