package com.petmily.customer.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.UserDAO;

/**
 * Servlet implementation class SignupidCheck
 */
@WebServlet("/SignupidCheck")
public class SignupidCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		UserDAO dao = new UserDAO();
		response.getWriter().write(dao.registerCheck(uid) + "");
	}

}
