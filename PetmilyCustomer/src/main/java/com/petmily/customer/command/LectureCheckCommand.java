package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.LecturecheckDAO;
import com.petmily.customer.dto.UserDTO;


public class LectureCheckCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// form에서 category num
		String categoryNum = request.getParameter("category_num");
		System.out.println(categoryNum);
		// session에서 user.uid
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("user");
		String uid = user.getUid();
		
		LecturecheckDAO dao = new LecturecheckDAO();
		dao.insertLecture(uid, categoryNum);
		
		
	}	



	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
