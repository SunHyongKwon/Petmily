package com.petmily.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.admin.command.AdminCommand;
import com.petmily.admin.command.AdminInfoList;
import com.petmily.admin.command.BoardListCommand;
import com.petmily.admin.command.LoginCommand;
import com.petmily.admin.command.LogoutCommand;
import com.petmily.admin.command.MypageModifyCommand;
import com.petmily.admin.command.MypageModifyLoginCommand;
import com.petmily.admin.command.MypageSelectCommand;
import com.petmily.admin.command.NoticeList;
import com.petmily.admin.command.SearchIdCommand;
import com.petmily.admin.command.SearchPwCommand;
import com.petmily.admin.command.SignupCommand;
import com.petmily.admin.command.UserInfoList;



@WebServlet("*.do")
public class AdminHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminHomeController() {
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
		AdminCommand command = null;
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String com = uri.substring(context.length());
		
		switch(com){
		
		//홈페이지 접속시
		case("/home.do"):
			viewpage = "home.jsp";
			break;
		//로그인화면접속
		case("/login_page.do"):
			viewpage = "login.jsp";
			break;
		//로그인 클릭시
		case("/login.do"):
			command = new LoginCommand();
			if(command.executeInt(request, response) == 1) {
				viewpage = "home.jsp";
			}else {
				viewpage = "login_page.do";
			}
			break;
			//로그아웃 클릭시
		case("/logout.do"):
			command = new LogoutCommand();
			command.execute(request, response);
			viewpage = "login.jsp";
			break;
			//로그인화면에서 아이디찾기 클릭시
		case("/search_id.do"):
			viewpage = "search_id.jsp";
			break;
			//로그인화면에서 비밀번호찾기 클릭시
		case("/search_pw.do"):
			viewpage = "search_pw.jsp";
			break;
			//로그인화면에서 회원가입 버튼 클릭시
		case("/signup_page.do"):
			viewpage = "signup_page.jsp";
			break;
			//회원가입화면에서 회원가입하기 버튼 클릭시
		case("/signup_page_action.do"):
			command = new SignupCommand();
			command.execute(request, response);
			viewpage = "signup_page.jsp";
			break;
			//id찾기화면에서 id 찾기버튼 눌렀을때,,,,<<<<<모달창뜨게 수정해야함>>>>>>
		case("/search_id_action.do"):
			command = new SearchIdCommand();
			if(command.executeInt(request, response) == 1) {
				viewpage = "home.jsp";
			}else {
				viewpage = "login.do";
			}
			break;
			//id찾기화면에서 id 찾기버튼 눌렀을때,,,,<<<<<모달창뜨게 수정해야함>>>>>>
		case("/search_pw_action.do"):
			command = new SearchPwCommand();
			if(command.executeInt(request, response) == 1) {
				viewpage = "home.jsp";
			}else {
				viewpage = "login.do";
			}
			break;
			//헤더에서 마이페이지 클릭시 기본화면 
		case("/mypage_modify.do"):
			viewpage = "mypage_modify_login.jsp";
			break;
			
			//마이페이지에서 비밀번호 확인시
		case("/mypage_modify_login.do"):
			command = new MypageModifyLoginCommand();
			if(command.executeInt(request, response) == 1) {
				viewpage = "mypage_modify.jsp";
			}else {
				viewpage = "mypage_modify_login.jsp";
			}
			break;
			//사이드바에서 게시물관리 클릭
		case("/board_list.do"):
			command = new BoardListCommand();
			command.execute(request, response);
			viewpage = "board_list.jsp";
			break;
			//사이드바에서 관리리자정보관리 클릭 
		case("/admin_info_list.do"):
			command = new AdminInfoList();
			command.execute(request, response);
			viewpage = "admin_info_list.jsp";
			break;
			//사이드바에서 회원정보관리 클릭 
		case("/user_info_list.do"):
			command = new UserInfoList();
			command.execute(request, response);
			viewpage = "user_info_list.jsp";
			break;
			//사이드바에서 공지사항관리 클릭 
		case("/notice_list.do"):
			command = new NoticeList();
			command.execute(request, response);
			viewpage = "notice_list.jsp";
			break;
			
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewpage);
		dispatcher.forward(request, response);
	}
}
