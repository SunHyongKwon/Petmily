package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.NoticeDAO;
import com.petmily.customer.dto.NoticeDTO;

// gukHwa [조회_게시판]
public class NoticeCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String ncategory = request.getParameter("ncategory");
		
		NoticeDAO dao = new NoticeDAO();
		ArrayList<NoticeDTO> dtos = dao.noticecategoryList(ncategory);
		request.setAttribute("ncategory", dtos);
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {

		return 0;
	}

}
