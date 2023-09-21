package com.fssa.flowerybouquet.loginservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.flowerybouquet.exception.InvalidUserException;
import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.UserService;
import com.fssa.flowerybouquet.util.Logger;
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
			throws ServletException, IOException {
		UserService userservice = new UserService();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserService userService = new UserService();
		User user = new User();
		try {
			user = userService.userLogin(email);
			String pwd = user.getPassword();
			if (!password.equals(pwd)) {
				throw new InvalidUserException("Incorrect Password");
			}
//			Below the code for create the new session
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("loggedInEmail", email);
			Logger.info(email);
			httpSession.setAttribute("logInUserDetails", user);
			response.sendRedirect(request.getContextPath() + "/home.jsp");
		} catch (ServiceException | InvalidUserException e) {
			String errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
			response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
		}
	}

}