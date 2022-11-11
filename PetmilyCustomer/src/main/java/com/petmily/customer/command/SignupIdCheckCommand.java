package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.UserDAO;

public class SignupIdCheckCommand implements CustomerCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		// TODO Auto-generated method stub
		String uid = request.getParameter("uid");
		UserDAO dao = new UserDAO();
		response.getWriter().write(dao.registerCheck(uid) + "");
	}	

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
