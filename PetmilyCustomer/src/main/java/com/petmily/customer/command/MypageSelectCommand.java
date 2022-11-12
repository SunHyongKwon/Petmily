package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.UserDTO;

public class MypageSelectCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}
	
	// 나중애 바꿔야됨
	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// 하다 만거 
		// by 은빈  -- myPageList
		String uid = request.getParameter("uid");
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.myPageView(uid);
		request.setAttribute("uid", dto);
				
		return 0;

	}

}
