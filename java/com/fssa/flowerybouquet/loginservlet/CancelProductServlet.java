package com.fssa.flowerybouquet.loginservlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.exception.OrderInvalidException;
import com.fssa.flowerybouquet.service.OrderService;

/**
 * Servlet implementation class CancelProductServlet
 */
@WebServlet("/CancelProductServlet")
public class CancelProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String orderIdStr = request.getParameter("orderId");

        if (orderIdStr != null && !orderIdStr.isEmpty()) {
        	
            try {
            	
                int orderId = Integer.parseInt(orderIdStr);
                OrderService orderService = new OrderService();
               OrderService.cancelOrder(orderId);
                System.out.println("Deleted order Successfully");
                response.sendRedirect("./home.jsp"); 
            } catch ( DAOException | SQLException | OrderInvalidException e) {
                System.out.println("Delete order failed");
                response.sendRedirect("./pages/Order/orderhistory.jsp"); 
                e.printStackTrace();
            }
        } else {
            System.out.println("Invalid order ID");
            response.sendRedirect("./pages/Order/orderhistory.jsp"); 
        }
    }
	}


