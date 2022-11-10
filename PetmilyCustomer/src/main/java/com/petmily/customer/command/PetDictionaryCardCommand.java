package com.petmily.customer.command;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.petspecDAO;
import com.petmily.customer.dto.petspecDTO;



public class PetDictionaryCardCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	
		// by 은빈  -- petList
		String pstype = request.getParameter("pstype");
		petspecDAO dao = new petspecDAO();
		ArrayList<petspecDTO> dto = dao.petList(pstype);
		
		request.setAttribute("petList", dto); 

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {

		return 0;
	}

}
