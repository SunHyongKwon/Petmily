package com.petmily.admin.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.NoticeDAO;
import com.petmily.admin.dao.PostingDAO;
import com.petmily.admin.dto.NoticeDTO;
import com.petmily.admin.dto.NoticePagingDTO;
import com.petmily.admin.dto.PostingDTO;

public class HomeListCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//최근 게시글 4개
		PostingDAO dao1 = new PostingDAO();
		ArrayList<PostingDTO> dtos1 = dao1.postList();
		request.setAttribute("POSTLIST", dtos1);
		
		//최근 댓글4개
//		PostingDAO dao2 = new PostingDAO();
//		ArrayList<PostingDTO> dtos2 = dao2.commentList();
//		request.setAttribute("COMMENTLIST", dtos2);
		
		
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
