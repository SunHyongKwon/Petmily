package com.petmily.admin.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.UserDAO;

public class ChartCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println("코맨드시작");
		
		UserDAO dao = new UserDAO();
		ArrayList<String> ulevelCount = dao.uLevelChart();
		String strUlevelCount = "";
	
		if (ulevelCount.size() != 0 ) {
			for (int i = 0; i < ulevelCount.size(); i++) {
				strUlevelCount += ulevelCount.get(i);
				
				if (i != ulevelCount.size()-1) {
					strUlevelCount += ",";
					
				}
			}
		}
		
		System.out.println(strUlevelCount);
		
	request.setAttribute("ULEVELCOUNT", strUlevelCount);
		
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
