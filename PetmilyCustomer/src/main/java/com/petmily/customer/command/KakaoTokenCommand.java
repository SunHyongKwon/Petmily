package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.KakaoDAO;
import com.petmily.customer.dto.KakaoDTO;

/*
 *  궁금증
 *  api에서 데이터를 가져오게 되면 이것도 마찬가지로 mvc를 나눠야 될지가 궁금
 *  일단은 나눔
 */

public class KakaoTokenCommand implements CustomerCommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String code = request.getParameter("code");

		KakaoDAO dao = new KakaoDAO();
		String access_token = dao.getToken(code);
		KakaoDTO kakao = dao.getKakao(access_token);
		
		request.setAttribute("kakao", kakao);
		
		dao.unlink(kakao.getId(),access_token);
		
	}
	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		return 0;

	}

}
