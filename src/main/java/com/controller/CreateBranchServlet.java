package com.controller;

import java.io.IOException;
import java.util.Arrays;
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

@WebServlet("/createbranch")
public class CreateBranchServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String branchName = req.getParameter("bn");
		String address = req.getParameter("address");
		long phoneNumber = Long.parseLong(req.getParameter("mob"));
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		String branchManagerName = req.getParameter("bmn");

		// create branch object

		Branch b = new Branch();
		b.setBranchname(branchName);
		b.setAddress(address);
		b.setPhonenumber(phoneNumber);
		b.setEmail(email);
		b.setPassword(password);
		b.setBranchmanagername(branchManagerName);

		// need admin

		HttpSession hs = req.getSession(); // HTTPSession object
		User admin = (User) hs.getAttribute("admin");// admin

		if (admin != null) {
			b.setUser(admin);// mapping

			// store data in database
			BranchDao dao = new BranchDao();
			Branch b1 = dao.createBranch(b);
			if (b1 != null) {
				// resp.getWriter().print("<h1>Branch Created Successfully</h1>");

				int adminId = admin.getId();
				UserDao dao1 = new UserDao();

				User adminUser = dao1.findUserById(adminId);
				List<Branch> listOfBranches = adminUser.getBranchs();

				req.getSession().setAttribute("list", listOfBranches);

				req.getRequestDispatcher("AdminDashboard.jsp").include(req, resp);

			}
		}

	}

}
