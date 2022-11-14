package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.LectureDAO;
import com.petmily.customer.dto.LectureDTO;

public class QuizCheckCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String a = request.getParameter("q1");
		String b = request.getParameter("q2");
		String c = request.getParameter("q3");
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		if(a.equals("1") && b.equals("1") && c.equals("1")) {
			return 1;
		}else {return 0;}
		
		
		
		
	}

}
