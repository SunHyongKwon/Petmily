package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.ApplyDAO;
import com.petmily.customer.dao.ReviewDAO;
import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.ApplyDTO;
import com.petmily.customer.dto.PagingDTO;
import com.petmily.customer.dto.UserDTO;

public class MypageParticipateListCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		UserDTO udto = (UserDTO) session.getAttribute("user");
		String uid = udto.getUid();
		
		int cPage = 0;
		int pageLength = 5;
		int totalRows = 0;
		int rowLength=5;
		String tempPage = request.getParameter("page");
		
		if(tempPage == null || tempPage.length()==0) {
			cPage = 1;
		}
		try {
			cPage = Integer.parseInt(tempPage);
		} catch (Exception e) {
			cPage = 1;
		}
		
		ApplyDAO adao = new ApplyDAO();
		UserDAO udao = new UserDAO();
		ReviewDAO rdao = new ReviewDAO();
		
		totalRows = adao.applyListRow(uid);
		PagingDTO dto =  adao.applyListPaging(cPage, totalRows, pageLength);
		ArrayList<ApplyDTO> dtos = adao.applyGetCompleteList(cPage, rowLength, uid);
		ArrayList<UserDTO> udtos = new ArrayList<>();
		int userRating = 0;
		
		// uid를 가지고 이제 uid 값들을 가져와야된다.
		for(ApplyDTO list : dtos) {
			String apply_uid = list.getUser_uid();
			UserDTO udto2 = udao.userInfo(uid);
			userRating = rdao.selectRating(uid);
			if(userRating == 0 ) {
				// 아직 평점이 없을 경우는 그냥 5점 준다. 평균
				userRating = 5;
			}
			udtos.add(udto2);
		}
		
		
		request.setAttribute("paging", dto);
		request.setAttribute("applyList", dtos);
		request.setAttribute("applyUserInfoList", udtos);
		request.setAttribute("userRating", userRating);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
