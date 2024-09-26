package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.dto.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("pass");
		
		//find by email
		UserDao dao=new UserDao();
		User user=dao.findByEmail(email);
		if(user!=null)
		{
			if(user.getPassword().equals(password))
			{
				//resp.getWriter().print("<h1>"+user.getRole()+"Login Successful</h1>");
				
				//create HttpSession object
				HttpSession hs=req.getSession(); //http session type
				hs.setAttribute(user.getRole()+"",user);
				
				req.getRequestDispatcher(user.getRole()+".jsp").include(req, resp);
			}
			else
			{
				resp.getWriter().print("<h1>Incorrect Password</h1>");
				req.getRequestDispatcher("login.jsp").include(req, resp);
			}
		}
		else
		{
			//navigate to userSignup page
			//resp.getWriter().print("<h1>First Create Account</h1>");
			req.getRequestDispatcher("userSignup.jsp").include(req, resp);
		}
		//req.getRequestDispatcher("index.jsp").include(req, resp);
	}
}