package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.EmailDAO;

public class EmailCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String uemail = request.getParameter("uemail");
		
		EmailDAO dao = new EmailDAO();
		int certifyNum = dao.send(uemail);
		
		response.getWriter().write(Integer.toString(certifyNum));
	}
		 

	

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 황국화 : raindrop6651@gmail.com
}
