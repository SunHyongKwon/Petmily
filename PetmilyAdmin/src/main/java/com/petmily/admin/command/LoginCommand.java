package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.admin.dao.AdminDAO;




public class LoginCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String adid = request.getParameter("adid");
		String adpw = request.getParameter("adpw");

		AdminDAO dao = new AdminDAO();
		
		// id , pw를 넘겨줘서 이걸 가지고 체크 한다.
		// result는 아이디와 pw가 일치하는 것이 database에 있는지 체크한다.
		String adname = dao.login(adid, adpw);

		// result 가 1이면 이건 아이디와 pw가 이 사이트에 가입되어 있는 것이기 때문에 앞으로 사용하기 위해 세션에 저장을 시켜준다.
		if (!(adname == null)) {
			HttpSession session = request.getSession();
			session.setAttribute("adid", adid);
			session.setAttribute("adname", adname);
			return 1;
		} else {

			request.setAttribute("loginStatus", "아이디, 비밀번호를 확인해주세요!");

			return 0;
		}
	}

}
