package com.petmily.admin.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.PostingDAO;
import com.petmily.admin.dto.PostingDTO;

public class BoardListCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("command 성공");
		PostingDAO dao = new PostingDAO();
		ArrayList<PostingDTO> dtos = dao.postList();
		request.setAttribute("POSTLIST", dtos);
		System.out.println("cc");
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
