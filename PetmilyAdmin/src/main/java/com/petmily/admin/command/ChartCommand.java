package com.petmily.admin.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.PostingDAO;
import com.petmily.admin.dao.UserDAO;
import com.petmily.admin.dto.PostingDTO;

public class ChartCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println("코맨드시작");
		
		UserDAO dao = new UserDAO();
		ArrayList<String> ulevelCount = dao.uLevelChart();
		String strUlevelCount = "";
	
		if (ulevelCount.size() != 0 ) {
			for (int i = 0; i < ulevelCount.size(); i++) {
				strUlevelCount += ulevelCount.get(i);
				
				if (i != ulevelCount.size()-1) {
					strUlevelCount += ",";
					
				}
			}
		}
		
		System.out.println(strUlevelCount);
		
	request.setAttribute("ULEVELCOUNT", strUlevelCount);

	//test start -------------- homelistcommnad 꺼 불러온거임 한커맨드로 컨트롤러에 넣을려고.,
	
//	PostingDAO dao1 = new PostingDAO();
//	ArrayList<PostingDTO> dtos1 = dao1.postList();
//	request.setAttribute("POSTLIST", dtos1);
	
	//최근 댓글4개
//	PostingDAO dao2 = new PostingDAO();
//	ArrayList<PostingDTO> dtos2 = dao2.commentList();
//	request.setAttribute("COMMENTLIST", dtos2);
	
	//test end --------------
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
