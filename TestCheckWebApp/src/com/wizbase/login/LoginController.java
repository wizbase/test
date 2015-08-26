package com.wizbase.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginController extends HttpServlet{
	

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		HttpSession session = req.getSession();
		
		RequestDispatcher dis = req.getRequestDispatcher("result.jsp");
		
		
		if(id.equals("admin") && pw.equals("1234")){
			session.setAttribute("id", id);
		}
		dis.forward(req, resp);
		
		
		
		
		
	}

}
