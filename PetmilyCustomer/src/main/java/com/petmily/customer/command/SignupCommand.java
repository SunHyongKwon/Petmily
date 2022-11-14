package com.petmily.customer.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.petmily.customer.dao.ChooseDAO;
import com.petmily.customer.dao.FileDAO;
import com.petmily.customer.dao.PetDAO;
import com.petmily.customer.dao.PetspecDAO;
import com.petmily.customer.dao.UserDAO;

public class SignupCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 프로필 사진 저장 start
		ServletContext application = request.getServletContext();

		String directory = application.getRealPath("/user/");
		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		
		
		
		
		MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
				new DefaultFileRenamePolicy());
	

		
		// 사용자가 넣은 file의 이름이 여기 들어오고
		String fileName = multipartRequest.getOriginalFileName("file");
		// 우리가 서버에 저장할 이름이 여기 들어가면 된다.
		String fileRealName = multipartRequest.getFilesystemName("file");
		String uid = multipartRequest.getParameter("uid");
		
		String uimage;
		if (!(fileName == null)) {
			FileDAO dao = new FileDAO();
			uimage = dao.rename(directory, fileRealName, uid);
		}else { 
			uimage = "";
		}
		// end

		if (!uimage.equals("")) {
			// 넣어줄 parameter 값들 가져오기
			// user 테이블에 넣어줘야 될 값들
			// uid -> 파일에 넣으려고 선언한 uid 값 가져오면 됨
			// upw
			String upw = multipartRequest.getParameter("upw");
			// uname
			String uname = multipartRequest.getParameter("uname");
			// unickname
			String unickname = multipartRequest.getParameter("unickname");
			// uemail
			String uemail = multipartRequest.getParameter("uemail");
			// uphone
			String uphone = multipartRequest.getParameter("uphone");
			// uaddress
			// uaddress_basic
			String uaddress_basic = multipartRequest.getParameter("uaddress_basic");
			// uaddress_detail
			String uaddress_detail = multipartRequest.getParameter("uaddress_detail");
			String uaddress = uaddress_basic + " " + uaddress_detail;
			// utype
			String utype = multipartRequest.getParameter("utype");
			//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

			// database user table에 insert 하기
			UserDAO userDAO = new UserDAO();
			userDAO.insert(uid, upw, uname, uphone, uemail, unickname, uaddress, utype, uimage);

			if (utype.equals("companion")) {
				// pet table에 들어가야 될 값들
				// petname
				String[] petname = multipartRequest.getParameterValues("petname");
				// petgender
				String[] petgender = multipartRequest.getParameterValues("petgender");
				// uid

				PetDAO petDAO = new PetDAO();
				petDAO.insert(petname, petgender, uid);

				// choose table에 petspec pet 연결하기 위한 작업
				// petid list select 해오기
				ArrayList<Integer> petIdList = petDAO.selectPetId(uid);
				// pstype
				String[] pstype = multipartRequest.getParameterValues("pstype");
				// psbreeds
				String[] psbreeds = multipartRequest.getParameterValues("psbreeds");
	
				PetspecDAO petspecDAO = new PetspecDAO();
				// pstype 과 psbreeds로 맞는 psid list 가져오기
				ArrayList<Integer> psidList = petspecDAO.selectPsId(pstype, psbreeds);

				// choose table에 petid , psid list 같이 넣기
				ChooseDAO chooseDAO = new ChooseDAO();
				chooseDAO.insert(petIdList, psidList);

				return 0;
			}
		}

		return 1;
	}

}
