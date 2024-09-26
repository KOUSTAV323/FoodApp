package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BranchDao;
import com.dao.UserDao;
import com.dto.Branch;
import com.dto.User;
@WebServlet("/updateBranch")
public class UpdateBranchServlet extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int id=Integer.parseInt(req.getParameter("id"));
		String branchName = req.getParameter("bn");
		String address = req.getParameter("address");
		long phoneNumber = Long.parseLong(req.getParameter("mob"));
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		String branchManagerName = req.getParameter("bmn");
		
		//find branch object
		BranchDao dao=new BranchDao();
		Branch b=dao.findBranchById(id);
		b.setBranchname(branchName);
		b.setEmail(email);
		b.setAddress(address);
		b.setPassword(password);
		b.setPhonenumber(phoneNumber);
		b.setBranchmanagername(branchManagerName);
		//update
		
		dao.createBranch(b);
		
		//find Admin
		HttpSession hs = req.getSession(); // HTTPSession object
		User admin = (User) hs.getAttribute("admin");// admin
        
		//based on find findAll branches
		
		int adminId = admin.getId();
		UserDao dao1 = new UserDao();

		User adminUser = dao1.findUserById(adminId);
		List<Branch> listOfBranches = adminUser.getBranchs();
		
		//store in session object

		req.getSession().setAttribute("list", listOfBranches);
		
		//display adminDashboard
	   // resp.getWriter().print("<h1>"+id+"Branch Update SuccessFully</h>");

		req.getRequestDispatcher("AdminDashboard.jsp").include(req, resp);
		
		
	}

}
