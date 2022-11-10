package com.petmily.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.command.ChallengeVideoCommand;
import com.petmily.customer.command.CustomerCommand;
import com.petmily.customer.command.KakaoTokenCommand;
import com.petmily.customer.command.MypageModifyInsertCommand;
import com.petmily.customer.command.MypageSelectCommand;
import com.petmily.customer.command.PetDictionaryCardCommand;
import com.petmily.customer.command.homeSlide1ClickCommand;
import com.petmily.customer.command.homeSlide1Command;
import com.petmily.customer.command.loginCommand;
import com.petmily.customer.command.signupCommand;


@WebServlet("*.do")
public class CustomerHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CustomerHomeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String viewpage = null;
		String content_viewpage = null;
		CustomerCommand command = null;
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String com = uri.substring(context.length());
		
		
		switch(com){
		//홈페이지로 이동
		case("/home.do"):
			viewpage = "home.jsp";
			break;
		//회원가입으로 이동
		case("/signup_page.do"):
			viewpage = "signup_page.jsp";
			break;
		//로그인화면으로 이동
		case("/login_page.do"):
			viewpage = "signup_page.jsp";
			break;
			
			
			//헤더에서 펫과사전 클릭시, 펫과사전 사이드바에서 동물종류 클릭시
		case("/pet_dictionary_card.do"):
			command = new PetDictionaryCardCommand();
			command.execute(request, response);
			viewpage = "pet_dictionary.jsp";
			break;
			//헤더에서 도전하기 클릭시, 챌린지 사이드바에서 챕터 클릭시
		case("/challenge.do"):
			command = new ChallengeVideoCommand();
			viewpage = "challenge.jsp";
			break;
			//헤더에서 
			
			
			
		//home slide_1 초기화면
		case("/home_slide_1.do"):
			command = new homeSlide1Command();
			command.execute(request, response);
			viewpage = "";
			break;
		//home slide_1 클릭했을 때
		case("/home_slide_1_click.do"):
			command = new homeSlide1ClickCommand();
			command.execute(request, response);
			viewpage = "";
			break;
		//home slide_2
		case("/home_slide_2.do"):
			//command = new homeSlide2Command();
			command.execute(request, response);
			viewpage = "";
			break;
		//home slide_3
		case("/home_slide_3.do"):
			//command = new homeSlide3Command();
			command.execute(request, response);
			viewpage = "";
			break;
		//카카오로그인
		case ("/sign_up_kakao.do"):
			command = new KakaoTokenCommand();
			command.execute(request, response);
			viewpage = "sign_up_form.jsp";
			content_viewpage = "mypage_modify.jsp";
			request.setAttribute("content_viewpage", content_viewpage);
			break;
		
		//회원정보 수정 페이지에서 수정버튼 눌렀을 때
		case("/mypage_modify_update.do"):
			command = new MypageModifyInsertCommand();
			command.execute(request, response);
			viewpage = "modify_update.jsp";
			break;
		//로그인 후 개인정보수정 들어갔을 때
		case("/mypage_modify_select.do"):
			command = new MypageSelectCommand();
			command.execute(request, response);
			viewpage = "modify_update.jsp";
			break;
		//로그인 버튼 클릭 시
		case("/login.do"):
			command = new loginCommand();
			if(command.executeInt(request, response) == 0) {
				viewpage = "home.jsp";	
				System.out.println("로그인성공");
				//로그인
			}else {
				viewpage = "login.jsp";
				System.out.println("로그인 실패");
				//비로그인
			}
			break;
		
		
		//회원가입 화면에서 가입하기 버튼 클릭 시
		case("/sign_up.do"):
			command = new signupCommand();
			if(command.executeInt(request, response) == 0) {
				viewpage = "login.jsp";	
			}else {
				viewpage = "signup.jsp";
			}
			break;
		//
				
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewpage);
		dispatcher.forward(request, response);
	}
}
