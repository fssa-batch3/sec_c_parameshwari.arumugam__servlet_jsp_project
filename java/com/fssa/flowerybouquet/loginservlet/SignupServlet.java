package com.fssa.flowerybouquet.loginservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.exception.InvalidUserException;
import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.UserService;
import com.fssa.flowerybouquet.util.Logger;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = request.getParameter("first_name");
		String lastname = request.getParameter("last_name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User();

		user.setFirstName(firstname);
		user.setLastName(lastname);
		user.setEmail(email);
		user.setPassword(password);

		UserService userservice = new UserService();

		try {
			boolean added = userservice.userSignUp(user);

			if (added) {
				System.out.println("added");
				response.sendRedirect("./pages/login.jsp");

			} else {
				System.out.println("not added");
			}

		} catch (ServiceException | InvalidUserException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();

			response.sendRedirect("signup.jsp");
		}

	}
}
