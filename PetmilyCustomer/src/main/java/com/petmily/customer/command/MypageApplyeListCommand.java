package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.ApplyDAO;
import com.petmily.customer.dto.ApplyDTO;

// gukHwa [조회_신청함 리스트]
public class MypageApplyeListCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String user_uid = request.getParameter("user_uid");
		
		ApplyDAO dao = new ApplyDAO();                  
		ArrayList<ApplyDTO> dto = dao.applyList(user_uid);
		
		request.setAttribute("applyList", dto);
		
		HttpSession session = request.getSession();
		session.getAttribute("user_uid");
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
