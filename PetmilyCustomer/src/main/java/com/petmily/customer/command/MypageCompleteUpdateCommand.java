package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.ApplyDAO;

public class MypageCompleteUpdateCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String index = request.getParameter("index");
		String[] apidArr = request.getParameterValues("apid");
		String[] pidArr = request.getParameterValues("pid");

		// index로 어떤 apid에서 선택 된 것인지 알아오기
		String apid = apidArr[Integer.parseInt(index)];
		String pid = apidArr[Integer.parseInt(index)];

		ApplyDAO adao = new ApplyDAO();
		adao.completeUpdate(Integer.parseInt(apid));

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
