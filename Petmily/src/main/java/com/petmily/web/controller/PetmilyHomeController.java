package com.petmily.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.web.command.PetmilyCommand;


@WebServlet("*.do")
public class PetmilyHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PetmilyHomeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String viewpage = null;
		PetmilyCommand command = null;
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String com = uri.substring(context.length());
		
		switch(com){

//			case ("/list.do"):
//				command = new OhListCommand();
//				if(command.executeInt(request, response) == 1) {
//					viewpage = "ShoesListAfter.jsp";
//				}else {
//					viewpage = "ShoesListBefore.jsp";
//				}
//				break;	
			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewpage);
		dispatcher.forward(request, response);
	}
}
