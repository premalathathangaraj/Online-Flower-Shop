package com.onlineflowershop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineflowershop.dao.impl.AdminDAOImpl;
import com.onlineflowershop.dao.impl.UserDAOImpl;
import com.onlineflowershop.model.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String emailId = request.getParameter("emailId");
		String password = request.getParameter("password");

		UserDAOImpl userDao = new UserDAOImpl();
		User currentUser=userDao.validateUser(emailId, password);
//		System.out.println(currentUser.getRole());
//		System.out.println(currentUser);
		String role=currentUser.getRole();
		HttpSession session=request.getSession();
		session.setAttribute("currentUser", currentUser);
		String user=currentUser.getName();
		session.setAttribute("username", user);
		int userId=currentUser.getUserId();
		session.setAttribute("userId", userId);
		System.out.println(userId);


		if (role.equals("Admin")) {
			
			response.sendRedirect("Admin.jsp");
		}

		else if (role.equals("user")) {
			
			response.sendRedirect("ShowProduct.jsp");
		}

	}

}
