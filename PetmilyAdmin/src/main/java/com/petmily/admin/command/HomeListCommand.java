package com.petmily.admin.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.NoticeDAO;
import com.petmily.admin.dao.PostingDAO;
import com.petmily.admin.dao.VisitorsCountDAO;
import com.petmily.admin.dto.NoticeDTO;
import com.petmily.admin.dto.NoticePagingDTO;
import com.petmily.admin.dto.PostingDTO;

public class HomeListCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//방문자 chart
		VisitorsCountDAO dao1 = new VisitorsCountDAO();
		String dataPoints = dao1.visitorsCountChart();
		request.setAttribute("DATAPOINTS", dataPoints);
		
		//일별 통계표
		PostingDAO dao2 = new PostingDAO();
		ArrayList<PostingDTO> dtos2 = dao2.dayList();
		request.setAttribute("DAYLIST", dtos2);
		
		//최근 게시글 4개
		PostingDAO dao3 = new PostingDAO();
		ArrayList<PostingDTO> dtos3 = dao3.postList();
		request.setAttribute("POSTLIST", dtos3);
		
		//최근 댓글4개
		PostingDAO dao4 = new PostingDAO();
		ArrayList<PostingDTO> dtos4 = dao4.commentList();
		request.setAttribute("COMMENTLIST", dtos4);
		
		//방문자 카운트
		VisitorsCountDAO dao5 = new VisitorsCountDAO();
		dao5.count();
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
