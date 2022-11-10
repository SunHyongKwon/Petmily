package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dto.PostingDTO;

// gukHwa [조회_게시판]
public class PostingCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String pcategory = request.getParameter("pcategory");
		
		PostingDAO dao = new PostingDAO();
		ArrayList<PostingDTO> dtos = dao.postcategoryList(pcategory);
		request.setAttribute("pcategory", dtos);
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {

		return 0;
	}

}
