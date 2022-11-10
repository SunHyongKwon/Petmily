package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.admin.dao.AdminDAO;

public class SearchIdCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		String adname = request.getParameter("adname");
		String ademail = request.getParameter("ademail");
	


		AdminDAO dao = new AdminDAO();
		
		// name , email를 넘겨줘서 이걸 가지고 체크 한다.
		
		String adid = dao.idCheck(adname, ademail);

		
		if (!(adid == null)) {
			request.setAttribute("ADID", adid);
			return 1;
		} else {
			//실패시 상태알림
			request.setAttribute("idStatus", "일치하는 정보가 없습니다.");

			return 0;
		}
		// TODO Auto-generated method stub
		
	}

}
