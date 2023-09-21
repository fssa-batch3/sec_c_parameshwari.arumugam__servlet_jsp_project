package com.fssa.flowerybouquet.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.UserService;
import com.fssa.flowerybouquet.util.Logger;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession httpSession = request.getSession();
		String emailId = (String) httpSession.getAttribute("loggedInEmail");
		Logger.info(emailId);

		try {
			User userDetails = new UserService().userLogin(emailId);
			request.setAttribute("userDetails", userDetails);
			Logger.info(userDetails.toString());
			RequestDispatcher rd = request.getRequestDispatcher("/pages/profile.jsp");
			rd.forward(request, response);
		} catch (IOException | ServiceException e) {
			Logger.info(e.getMessage());
		}

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
