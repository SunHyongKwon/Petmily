package com.petmily.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.dao.AdminDAO;


// gukHwa [수정]
public class MypageModifyCommand implements AdminCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

			// admin table update 할려고 가져오는 부분
			String adpw = request.getParameter("adpw");
			String adname = request.getParameter("company_cname");
			String adphone = request.getParameter("adphone");
			String ademail = request.getParameter("ademail");
			
			AdminDAO dao = new AdminDAO();
			dao.update(adpw, adname, adphone, ademail);
			
		}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

	}


