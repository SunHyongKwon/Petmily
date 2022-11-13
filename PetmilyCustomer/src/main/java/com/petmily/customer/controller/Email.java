package com.petmily.customer.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.EmailDAO;


@WebServlet("/Email2")
public class Email extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Email() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String uemail = request.getParameter("uemail");
		System.out.println(uemail);
		EmailDAO dao = new EmailDAO();
		
		response.getWriter().write(dao.send(uemail) + "");
	}

}
