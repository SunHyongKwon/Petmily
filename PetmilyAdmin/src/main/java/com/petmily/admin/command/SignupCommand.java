package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.AdminDAO;



public class SignupCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String adid = request.getParameter("adid");
		String adpw = request.getParameter("adpw");
		String adname = request.getParameter("adname");
		String ademail = request.getParameter("ademail");
		String adphone = request.getParameter("adphone");
		
		System.out.println(adname);
		
		AdminDAO dao = new AdminDAO();
		System.out.println("command 끝");
		dao.signupInsert(adid,adpw,adname,ademail,adphone);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
