package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dto.PostingDTO;

public class postingInfoCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int pid = Integer.parseInt(request.getParameter("pid"));

		PostingDAO dao = new PostingDAO();
		PostingDTO dto = dao.postingInfo(pid);
		
	
		
		
		request.setAttribute("postingInfo", dto);
		
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
