package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PostingDAO;

public class postingDeleteCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int pid = Integer.parseInt(request.getParameter("pid"));
		int result;
		PostingDAO dao = new PostingDAO();
		
		
		result = dao.postingDelete(pid);
		
		
		if(result == 1) {
		request.setAttribute("deleteMessege", "게시물이 정상적으로 삭제 되었습니다.");
		}else {
			request.setAttribute("deleteMessege", "게시물이 삭제되지 않았습니다. 다시시도 부탁드립니다.");
		}
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
