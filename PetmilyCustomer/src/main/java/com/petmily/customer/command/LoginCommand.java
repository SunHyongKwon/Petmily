package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.UserDTO;

public class LoginCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}
	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.login(uid, upw);

		
		if (!(dto == null)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", dto);
			
			return 0;
			
		} else {

			request.setAttribute("loginStatus", "로그인에 실패하셨습니다.");

			return 1;
		}

	}

}
