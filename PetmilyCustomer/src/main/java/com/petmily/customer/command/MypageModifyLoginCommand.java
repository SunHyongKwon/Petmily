package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.UserDAO;

public class MypageModifyLoginCommand implements CustomerCommand {

	@Override
		
	
	// by 은빈  -- 마이페이지
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		String uname = request.getParameter("uname");
		String unickname = request.getParameter("unickname");
		String uphone = request.getParameter("uphone");
		String uemail = request.getParameter("uemail");
		String uaddress = request.getParameter("uaddress");
		
		UserDAO udao =new UserDAO();
		udao.mypageLoginModify(uid, upw, uname, unickname, uphone, uemail, uaddress);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
			
			// by 은빈 -- 비밀번호 확인 후 마이페이지 들어가기
			String uid = request.getParameter("uid");			
			UserDAO dao = new UserDAO();
			String uid1 = dao.mypagePwCheck(uid);

			if (!(uid1 == null)) {
				HttpSession session = request.getSession();
				session.setAttribute("uid", uid1);
				return 1;
			} else {
				return 0;
			}
	
	}

}
