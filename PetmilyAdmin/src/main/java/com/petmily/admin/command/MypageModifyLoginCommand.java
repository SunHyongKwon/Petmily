package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.AdminDAO;

public class MypageModifyLoginCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String adpw = request.getParameter("adpw");

		AdminDAO dao = new AdminDAO();

		int count = dao.mypagelogin(adpw);
		if (count == 1) {
			return 1;
		} else {

		  return 0;
		}
	}

}
