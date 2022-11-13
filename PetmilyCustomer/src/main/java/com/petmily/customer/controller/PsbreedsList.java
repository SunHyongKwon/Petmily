package com.petmily.customer.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PetspecDAO;

@WebServlet("/PsbreedsList")
public class PsbreedsList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String pstype = request.getParameter("pstype");
		
		PetspecDAO dao = new PetspecDAO();
		ArrayList<String> psbreedsList = dao.psbreedsList(pstype);
		
		
		
		response.getWriter().write(psbreedsList.toString());
	}

	
}
