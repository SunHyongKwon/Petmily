package com.petmily.customer.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.ApplyDAO;
import com.petmily.customer.dto.UserDTO;

public class postingApplyInsertCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO)session.getAttribute("user");
		ApplyDAO adao = new ApplyDAO();
		
		String user_uid = "";
		int posting_pid = 0;
		String posting_user_uid = "";
		String aptitle = "";
		String apcontent = "";
		
		user_uid = udto.getUid();
		posting_pid = Integer.parseInt(request.getParameter("pid"));
		posting_user_uid = request.getParameter("user_uid");
		aptitle = request.getParameter("aptitle");
		apcontent = request.getParameter("apcontent");
		
		System.out.println("user_uid : "+user_uid);
		System.out.println("posting_pid : "+posting_pid);
		System.out.println("posting_user_uid : "+posting_user_uid);
		System.out.println("aptitle : "+aptitle);
		System.out.println("apcontent : "+apcontent);
		
		
		
		int count;
		
		count = adao.applyUserCount(user_uid, posting_pid);
		System.out.println(count);
		if ( count == 0) {
			adao.postingApplyInsert(user_uid, posting_pid, posting_user_uid, aptitle, apcontent);
			request.setAttribute("applyStatus", "신청이 완료되었습니다.");
			
		}
		
		if(count == 1){
			request.setAttribute("applyStatus", "이미 신청한 내역이 있습니다.<br>신청은 한 번만 가능합니다.");			
		}
		
		
		
		
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		return 0;
	}

}
