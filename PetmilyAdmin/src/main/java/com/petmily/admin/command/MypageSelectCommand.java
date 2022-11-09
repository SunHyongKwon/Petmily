package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.AdminDAO;
import com.petmily.admin.dto.adminDTO;

public class MypageSelectCommand implements AdminCommand {
	//석진 마이페이지 content view
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String adid =request.getParameter("adid");
		AdminDAO dao= new AdminDAO();
		adminDTO dto=dao.adminContentView(adid);
		
		request.setAttribute("admin_content_view", dto);

	}

}
