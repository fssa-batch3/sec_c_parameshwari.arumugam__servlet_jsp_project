package com.fssa.flowerybouquet.loginservlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.dao.UserDAO;
import com.fssa.flowerybouquet.enums.OrderStatus;
import com.fssa.flowerybouquet.exception.OrderInvalidException;
import com.fssa.flowerybouquet.model.Order;
import com.fssa.flowerybouquet.model.OrderDetail;
import com.fssa.flowerybouquet.model.Product;
import com.fssa.flowerybouquet.model.User;
import com.fssa.flowerybouquet.service.OrderService;
import com.fssa.flowerybouquet.service.ProductService;
import com.fssa.flowerybouquet.util.Logger;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ProductService productService = new ProductService();
	OrderService orderService = new OrderService();
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productId =request.getParameter("productId");
		
		String address= request.getParameter("address");
		System.out.println(address+"address");
		String phoneNumber= request.getParameter("phoneNumber");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("logInUserDetails");
		Order order = new Order();
		OrderDetail orderProduct = new OrderDetail();
		try {
			Product product = ProductService.getProductById(Integer.parseInt(productId));
			List<OrderDetail> productsList = new ArrayList<>();
			int userId = UserDAO.getUserIdByEmail(user.getEmail());
			orderProduct.setProductId(Integer.parseInt(productId) );
			orderProduct.setProductPrice(product.getProductPrice());
			orderProduct.setQuantity(1);
			orderProduct.setTotalAmount(product.getProductPrice());
			productsList.add(orderProduct);
			order.setTotalAmount(product.getProductPrice());
			order.setProductsList(productsList);
			order.setOrderedDate(LocalDate.now());
			order.setUserID(userId);
			order.setAddress(address);
			order.setPhoneNumber(phoneNumber);
			order.setStatus(OrderStatus.ORDERED);
			Logger.info(order);
			orderService.addOrder(order);
			Logger.info("Order Placed Sucessfully ");
		} catch (DAOException |OrderInvalidException |SQLException | NumberFormatException e) {
			Logger.info("Order Failed"+e.getMessage());
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("./pages/Order/Placeorder.jsp");
		rd.forward(request, response);

	}

	

}
