package com.fssa.flowerybouquet.loginservlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.dao.UserDAO;
import com.fssa.flowerybouquet.exception.OrderInvalidException;
import com.fssa.flowerybouquet.model.Order;
import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.OrderService;

/**
 * Servlet implementation class OrderHistoryServlet
 */
@WebServlet("/OrderHistoryServlet")
public class OrderHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OrderHistoryServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderService orderService = new OrderService();
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("logInUserDetails");
		int userId;
		try {
			userId = UserDAO.getUserIdByEmail(user.getEmail());
			ArrayList<Order> orderDetails=orderService.getOrderById(userId);
			request.setAttribute("orderDetails", orderDetails);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/pages/Order/orderhistory.jsp");
			requestDispatcher.forward(request, response);
		} catch (DAOException |OrderInvalidException | SQLException e) {
			System.out.println("Getting order details failed");
			e.printStackTrace();
		} 
		
	}

	}
