package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.ReviewDAO;

public class MyPageApplyUpdateCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String func = request.getParameter("func");
		String index = request.getParameter("index");
		String[] apidArr = request.getParameterValues("apid");
		
		// index로 어떤 apid에서 선택 된 것인지 알아오기
		String apid = apidArr[Integer.parseInt(index)];

		String columnname = "";
		
		// 어떤 버튼 눌렀는지에 따라 업데이트 해줘야 하는 컬럼명이 다름
		if(func.equals("accept")) {
			columnname = "apmatchingdate";
			// 수락일 때 
		}else {
			// 거절일 때
			columnname = "apcanceldate";
		}
		
		// review table에 그거 업데이트
		ReviewDAO dao = new ReviewDAO();
		dao.update(Integer.parseInt(apid),columnname);
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		return 0;
	}

}
