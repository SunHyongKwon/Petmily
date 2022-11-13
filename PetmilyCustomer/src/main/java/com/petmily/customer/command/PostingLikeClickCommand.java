package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.ShowDAO;
import com.petmily.customer.dto.UserDTO;

public class PostingLikeClickCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		ShowDAO dao = new ShowDAO();
		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO)session.getAttribute("user");
		
		String user_uid = udto.getUid();
		int pid = Integer.parseInt(request.getParameter("pid"));
		int likeCheck = Integer.parseInt(request.getParameter("likeCheck"));
		int postingLike = dao.showLikeAllCount(pid);
		
		
		if(likeCheck == 1) {
			likeCheck = 0;
			dao.showInsetLike(pid, user_uid, likeCheck);
		}else {
			likeCheck = 1;
			dao.showInsetLike(pid, user_uid, likeCheck);
		}
		
		request.setAttribute("likeCheck", likeCheck);
		request.setAttribute("postingLike", postingLike);
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
