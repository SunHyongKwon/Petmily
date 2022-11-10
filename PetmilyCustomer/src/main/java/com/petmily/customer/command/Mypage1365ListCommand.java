package com.petmily.customer.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.volunteerDAO;
import com.petmily.customer.dto.volunteerDTO;

public class Mypage1365ListCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// by 은빈  --volunteerList
		volunteerDAO dao = new volunteerDAO();
		ArrayList<volunteerDTO> dtos = dao.volunteerList();
		request.setAttribute("volunteerlist", dtos);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
