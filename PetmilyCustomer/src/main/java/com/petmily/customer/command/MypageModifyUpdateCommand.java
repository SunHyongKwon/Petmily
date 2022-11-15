package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.UserDAO;
import com.petmily.customer.dto.UserDTO;

public class MypageModifyUpdateCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		UserDAO udao = new UserDAO();
		
		UserDTO udto = (UserDTO)session.getAttribute("user");
		String uid = udto.getUid();
		
		UserDTO userdto = udao.userInfo(uid);
		
		request.setAttribute("uid", uid);
		request.setAttribute("userInfo", userdto);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
