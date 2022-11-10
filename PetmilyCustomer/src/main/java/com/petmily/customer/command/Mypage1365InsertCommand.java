package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.VolunteerDAO;

public class Mypage1365InsertCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String volunregisno = request.getParameter("volunregisno");
	      String volunname = request.getParameter("volunname");
	      String volunorganization = request.getParameter("volunorganization");
	      int voluntime = Integer.parseInt(request.getParameter("voluntime"));
	      String volunplace = request.getParameter("volunplace");
	      
	      VolunteerDAO dao = new VolunteerDAO();
	      /* 마지막 줄 mypage1365Insert 메소드 없음 */
	      dao.mypage1365Insert(volunregisno, volunname, volunorganization, voluntime, volunplace);
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
