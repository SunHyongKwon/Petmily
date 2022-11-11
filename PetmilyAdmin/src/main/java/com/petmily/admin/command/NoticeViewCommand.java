package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.NoticeDAO;
import com.petmily.admin.dto.NoticeDTO;

public class NoticeViewCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		NoticeDAO dao = new NoticeDAO();
		int nid = Integer.parseInt(request.getParameter("nid"));
		
		NoticeDTO dto = dao.noticeView(nid);
		
		
		
		request.setAttribute("notice", dto);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
