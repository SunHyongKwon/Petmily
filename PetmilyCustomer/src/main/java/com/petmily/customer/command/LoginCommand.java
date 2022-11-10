package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.userDAO;
import com.petmily.customer.dto.userDTO;

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
		
		userDAO dao = new userDAO();
		userDTO dto = dao.login(uid, upw);
		
		
		
//		String unickname = udto.login();
		
		// result 가 1이면 이건 아이디와 pw가 이 사이트에 가입되어 있는 것이기 때문에 앞으로 사용하기 위해 세션에 저장을 시켜준다.
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
