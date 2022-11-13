package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.UserDTO;

public class MypageModifyLoginCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserDAO udao = new UserDAO();
		UserDTO udto = (UserDTO)session.getAttribute("user");
		String uid = udto.getUid();
		
		String upw = request.getParameter("upw");
		int result = 0;
		
		result = udao.userPwCheck(uid, upw);
		
		if(result == 1) {
			return 1;
		}else {
			return 0;
		}

	}

}
