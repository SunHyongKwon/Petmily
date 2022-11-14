package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.ApplyDAO;

public class MypageApplyDeleteCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String index = request.getParameter("index");
		String[] apidArr = request.getParameterValues("apid");
		
		// index로 어떤 apid에서 선택 된 것인지 알아오기
		String apid = apidArr[Integer.parseInt(index)]; 
		
		String columnname = "";
		
		// 어떤 버튼 눌렀는지에 따라 업데이트 해줘야 하는 컬럼명이 다름
		// 그냥 두개로 나누기로 함
		columnname = "apcanceldate";
		
		// review table에 그거 업데이트
		ApplyDAO dao = new ApplyDAO();
		dao.updateByApId(Integer.parseInt(apid),columnname);
		
		request.setAttribute("alert", "정상적으로 거절 되셨습니다.");
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
