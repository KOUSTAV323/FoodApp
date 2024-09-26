package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.dto.Branch;
import com.dto.User;

@WebServlet("/findAllBranch")
public class FindAllBranchServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// find admin id
		HttpSession hs = req.getSession(); // HTTPSession object
		User admin = (User) hs.getAttribute("admin");// admin

		// based on find find all branches
		int adminId = admin.getId();
		UserDao dao1 = new UserDao();

		User adminUser = dao1.findUserById(adminId);
		List<Branch> listOfBranches = adminUser.getBranchs();

		// store in session object
		req.getSession().setAttribute("list", listOfBranches);

		// display AdminDashboard
		req.getRequestDispatcher("AdminDashboard.jsp").include(req, resp);

	}

}
