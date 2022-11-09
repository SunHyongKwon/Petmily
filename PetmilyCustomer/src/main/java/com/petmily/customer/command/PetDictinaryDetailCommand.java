package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PetspecDAO;

public class PetDictinaryDetailCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String psbreeds = request.getParameter("psbreeds");
		
		PetspecDAO dao = new PetspecDAO();
		String pscontent = dao.pscontent(psbreeds);
		
		request.setAttribute("pscontent", pscontent);


	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}


