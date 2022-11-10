package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.petmily.customer.dao.PetDAO;
import com.petmily.customer.dao.PetspecDAO;
import com.petmily.customer.dao.UserDAO;


public class SignupCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//user,register,pet,choose,petspec
		
		//user table : s uid ,s upw ,s uname ,s uemail ,s uphone ,s uaddress_basic ,s uaddress_detail ,s utype 
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String uphone = request.getParameter("uphone");
		String uaddress_basic = request.getParameter("uaddress_basic");
		String uaddress_detail = request.getParameter("uaddress_detail");
		String utype = request.getParameter("utype");
		
		UserDAO dao = new UserDAO();
		dao.insert(uid,upw,uname,uphone,uemail,uaddress_basic,uaddress_detail,utype);
		
		
		// pet 관련 :s petname ,s petgender 
		String petname = request.getParameter("petname");
		String petgender = request.getParameter("petgender");
		
		PetDAO dao2 = new PetDAO();
		dao2.insert(petname,petgender);
		
		// petspec table :s pstype ,s psbreeds
		String pstype = request.getParameter("pstype");
		String psbreeds = request.getParameter("psbreeds");
		
		PetspecDAO dao3 = new PetspecDAO();
		dao3.insert(pstype,psbreeds);
		
		//register table은 t reginitdate
		//choose table은 t chodate
		

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
