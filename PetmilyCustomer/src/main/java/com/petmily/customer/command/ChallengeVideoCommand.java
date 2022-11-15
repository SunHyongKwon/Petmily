package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.LectureDAO;
import com.petmily.customer.dto.LectureDTO;

public class ChallengeVideoCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String slid = "1";
		LectureDAO dao = new LectureDAO();
		LectureDTO dto = dao.lecturView(slid);
		request.setAttribute("lecture_view", dto);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
