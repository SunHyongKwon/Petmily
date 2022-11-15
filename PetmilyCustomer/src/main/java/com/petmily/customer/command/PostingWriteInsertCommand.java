package com.petmily.customer.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.petmily.customer.dao.PostingDAO;
import com.petmily.customer.dto.UserDTO;

public class PostingWriteInsertCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		// 프로필 사진 저장 start
		ServletContext application = request.getServletContext();

		String directory = application.getRealPath("/posting/");
		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		
		// 3개 이상 안들어오기 때문에 image 이름 받아오기
		String pimage1 = "";
		String pimage2 = "";
		String pimage3 = "";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
				new DefaultFileRenamePolicy());

		// 여러개의 파일이 들어오는 경우
		Enumeration files = multipartRequest.getFileNames();		
		int i = 1;
		while (files.hasMoreElements()) {

			String file = (String) files.nextElement();
			
			String fileName = multipartRequest.getOriginalFileName(file);
			// 우리가 서버에 저장할 이름이 여기 들어가면 된다.
			String fileRealName = multipartRequest.getFilesystemName(file);
			
			if(i == 1) {
				pimage1 = fileRealName;
			}else if (i == 2) {
				pimage2 = fileRealName;
			}else {
				pimage3 = fileRealName;
			}
			
			i++;
		}
		// 끝

		HttpSession session = request.getSession();

		PostingDAO dao = new PostingDAO();

		UserDTO udto = (UserDTO) session.getAttribute("user");

		String ptitle = multipartRequest.getParameter("ptitle");
		String pcontent = multipartRequest.getParameter("pcontent");
		String pcategory = multipartRequest.getParameter("pcategory");
		String plocation_basic = multipartRequest.getParameter("plocation_basic");
		String plocation_detail = multipartRequest.getParameter("plocation_detail");
		int plevel = 1; // 게시물 1

		String user_uid = udto.getUid();
		String plocation = plocation_basic + " " + plocation_detail;

		int insertResult = dao.postingWriteAction(ptitle, pcontent, pcategory, plocation, pimage1, pimage2, pimage3, plevel, user_uid);
		
		
		request.setAttribute("pcategory", pcategory);

		return insertResult;
	}
	

}
