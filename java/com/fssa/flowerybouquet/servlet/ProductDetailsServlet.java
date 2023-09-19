package com.fssa.flowerybouquet.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.model.Product;
import com.fssa.flowerybouquet.service.ProductService;

/**
 * Servlet implementation class ProductDetailsServlet
 */
@WebServlet("/ProductDetailsServlet")
public class ProductDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ProductService productservice = new ProductService();

		try {
			Product product = productservice.getProductById(id);
			request.setAttribute("product", product);

		} catch (SQLException | DAOException e) {
			e.printStackTrace();
		}

		request.getServletContext().getRequestDispatcher("/productdetail.jsp").forward(request, response);
	}

}
