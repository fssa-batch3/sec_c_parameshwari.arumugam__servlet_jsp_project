package com.fssa.flowerybouquet.loginservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.exception.InvalidUserException;
import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.UserService;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/FloweryLoginServlet")
public class FloweryLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FloweryLoginServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		UserService userservice = new UserService();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		PrintWriter out = response.getWriter();

		User user = new User();
		user.setEmail(email);
		user.setPassword(password);

		try {

			if (userservice.userLogin(email, password)) {
				HttpSession session = request.getSession(false);
				session.setAttribute("email", email);
				session.setAttribute("loggedInSuccess", true);
				System.out.println(session.getId());
//				request.getRequestDispatcher("home.jsp").forward(request, response);
				response.sendRedirect(request.getContextPath() + "/home.jsp");
				
			} else {
				response.sendRedirect(request.getContextPath() + "/login.jsp?error=Login Failded");
			}

		} catch (ServiceException | DAOException | SQLException e) {
			e.printStackTrace();
			out.print(e.getMessage());
//			response.sendRedirect("/login.jsp?error=" + e.getMessage());

			// RequestDispatcher dispatcher =
			// request.getRequestDispatcher(request.getContextPath() + "/pages/login.jsp");
			// dispatcher.forward(request, response);
			// e.printStackTrace();

		}

	}

}