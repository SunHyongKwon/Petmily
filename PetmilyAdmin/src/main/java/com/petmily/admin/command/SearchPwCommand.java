package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.AdminDAO;

public class SearchPwCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String adid = request.getParameter("adid");
		String ademail = request.getParameter("ademail");
	


		AdminDAO dao = new AdminDAO();
		
		// id , email를 넘겨줘서 이걸 가지고 체크 한다.
		
		String adpw = dao.pwCheck(adid, ademail);

		
		if (!(adpw == null)) {
			request.setAttribute("ADPW", adpw);
			return 1;
		} else {
			//실패시 상태알림
			request.setAttribute("pwStatus", "일치하는 정보가 없습니다.");

			return 0;
		}
		// TODO Auto-generated method stub
	}

}
