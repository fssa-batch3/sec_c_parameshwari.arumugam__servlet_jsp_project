package com.fssa.flowerybouquet.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.UserService;
import com.fssa.flowerybouquet.util.Logger;
import com.google.protobuf.ServiceException;

/**
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String phoneNumber = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");

		UserService service = new UserService();
		User user = new User();
		user.setFirstName(firstname);
		user.setLastName(lastname);
		user.setPhonenumber(phoneNumber);
		user.setEmail(email);
		user.setPassword(password);
		user.setAddress(address);
		user.setState(state);
		user.setCity(city);
		user.setPincode(pincode);
		Logger.info(user.toString());

		try {
			service.userProfileUpdate(email, user);
			request.setAttribute("userDetails", user);
			RequestDispatcher rd = request.getRequestDispatcher("/profilepage.jsp");
			rd.forward(request, response);
//			response.sendRedirect(request.getContextPath() + "/profilepage.jsp");

		} catch (ServiceException | IOException e) {
			e.printStackTrace();
		}
	}

	
}
