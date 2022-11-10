package com.petmily.customer.command;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.VolunteerDAO;
import com.petmily.customer.dto.VolunteerDTO;


public class Mypage1365ListCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		
		// by 은빈  --volunteerList
		VolunteerDAO dao = new VolunteerDAO();
		ArrayList<VolunteerDTO> dtos = dao.volunteerList();
		request.setAttribute("volunteerlist", dtos);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
