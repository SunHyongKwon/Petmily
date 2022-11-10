package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// gukHwa [조회_신청함 리스트]
//신청함 리스트를 보여줘야된다.
//apply table -> apcontent, user_uid 알아서 가져와야 된다. 이걸 list로 만들어야 된다. 
//parameter -> session user.uid
//attribute -> applyList dto-list : apcontent , user_uid
public class MypageApplyeListCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		
	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
