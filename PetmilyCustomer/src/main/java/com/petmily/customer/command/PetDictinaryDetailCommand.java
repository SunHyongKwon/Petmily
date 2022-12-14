package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PetspecDAO;

// gukHwa [조회_견종설명]

public class PetDictinaryDetailCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		
		String psbreeds = request.getParameter("psbreeds");
		
		PetspecDAO dao = new PetspecDAO();
		String pscontent = dao.pscontent(psbreeds);
		
		request.setAttribute("pscontent", pscontent);
		request.setAttribute("content_viewpage", "pet_dictionary_detail.jsp");

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}


