package com.petmily.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.command.ChallengeVideoCommand;
import com.petmily.customer.command.ChattingCommand;
import com.petmily.customer.command.CustomerCommand;
import com.petmily.customer.command.HomeSlide1ClickCommand;
import com.petmily.customer.command.KakaoTokenCommand;
import com.petmily.customer.command.LoginCommand;
import com.petmily.customer.command.Mypage1365InsertCommand;
import com.petmily.customer.command.Mypage1365ListCommand;
import com.petmily.customer.command.Mypage1365SearchCommand;
import com.petmily.customer.command.MypageApplyeListCommand;
import com.petmily.customer.command.MypageChallengeCommand;
import com.petmily.customer.command.MypageModifyLoginCommand;
import com.petmily.customer.command.MypageParticipateListCommand;
import com.petmily.customer.command.MypageWriteListCommand;
import com.petmily.customer.command.NoticeCommand;
import com.petmily.customer.command.PetDictionaryCardCommand;
import com.petmily.customer.command.SignupCommand;


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
		//로그인화면으로 이동
		case("/login_page.do"):
			viewpage = "login.jsp";
		break;
		//회원가입으로 이동
		case("/signup_page.do"):
			viewpage = "signup_page.jsp";
			break;
		//헤더에서 마이페이지 클릭시 기본화면 
		case("mypage_modify.do"):
			viewpage = "mypage_modify_login.jsp";
		break;
		//마이페이지에서 비밀번호 확인시
		case("mypage_modify_login.do"):
			command = new MypageModifyLoginCommand();
			if(command.executeInt(request, response) == 1) {
				viewpage = "mypage_modify.jsp";
			}else {
				viewpage = "mypage_modify_login.jsp";
			}
			break;
		//마이페이지에서 챌린지 클릭했을 때
		case("mypage_challenge.do"):
			command = new MypageChallengeCommand();
			command.execute(request, response);
			viewpage = "mypage_challenge.jsp";
			break;
		//마이페이지에서 1365적립 클릭시
		case("mypage_1365.do"):
			viewpage = "mypage_1365.jsp";
			break;
		//마이페이지에서 1365적립 화면에서 적립 클릭시
		case("mypage_1365_insert.do"):
			command = new Mypage1365InsertCommand();
			if(command.executeInt(request, response) == 1) {
				
			}else {
				
			}
			break;
		//마이페이지에서 1365적립 화면에서 인증 클릭시 1365api에서 정보를 불러옴
		case("mypage_1365_search.do"):
			command = new Mypage1365SearchCommand();
			if(command.executeInt(request, response) == 1) {
				
			}else {
				
			}
			break;
		//1365적립내역 확인시
		case("mypage_1365_list.do"):
			command = new Mypage1365ListCommand();
			command.execute(request, response);
			viewpage = "mypage_1365_select.jsp";
			break;
		
		//마이페이지에서 사이트참여내역 클릭시
		case("mypage_participate_list.do"):
			command = new MypageParticipateListCommand();
			command.execute(request, response);
			viewpage = "mypage_participate_list.jsp";
			break;
			
		//마이페이지에서 작성내역 클릭시
		case("mypage_write_list.do"):
			command = new MypageWriteListCommand();
			command.execute(request, response);
			viewpage = "mypage_write_list.jsp";
			break;
			
		//마이페이지에서 신청내역 클릭시
		case("mypage_applye_list.do"):
			command = new MypageApplyeListCommand();
			command.execute(request, response);
			viewpage = "mypage_applye_list.jsp";
			break;		
			
		
		
		//모든게시판 접속시 테이블보여주기 및 검색시
		case("nocice.do"):
			command = new NoticeCommand();
			command.execute(request, response);
			viewpage = "board_list.jsp";
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
			//헤더에서 채팅버튼 클릭시
		case("/chatting.do"):
			command = new ChattingCommand();
			viewpage = "challenge.jsp";
			break;
		
			
			
			
			
		//home slide_1 초기화면
		case("/home_slide_1.do"):
			//command = new HomeSlide1Command();
			command.execute(request, response);
			viewpage = "";
			break;
		//home slide_1 클릭했을 때
		case("/home_slide_1_click.do"):
			command = new HomeSlide1ClickCommand();
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
	
		//로그인 버튼 클릭 시
		case("/login.do"):
			command = new LoginCommand();
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
			command = new SignupCommand();
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
