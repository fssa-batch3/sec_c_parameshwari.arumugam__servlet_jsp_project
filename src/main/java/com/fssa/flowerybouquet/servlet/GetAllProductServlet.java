package com.fssa.flowerybouquet.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.model.Product;
import com.fssa.flowerybouquet.service.ProductService;

/**
 * Servlet implementation class GetAllProductServlet
 */
@WebServlet("/GetAllProductServlet")
public class GetAllProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductService productservice = new ProductService();
		try {
			List<Product> productList = (List<Product>) productservice.getAllProductDetails();
			request.setAttribute("productList", productList);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/product.jsp");
		dis.forward(request, response);

	}

}
