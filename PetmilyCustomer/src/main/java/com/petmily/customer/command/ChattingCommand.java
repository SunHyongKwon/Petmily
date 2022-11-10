package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PetspecDAO;
import com.petmily.customer.dto.PetspecDTO;

public class ChattingCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String pstype = request.getParameter("pstype");
		
		if(pstype == null) {
			pstype = "dog";
		}
		
		PetspecDAO dao = new PetspecDAO();
		ArrayList<PetspecDTO> dto = dao.petSpecList(pstype);
		
		request.setAttribute("petSpecList", dto);
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
