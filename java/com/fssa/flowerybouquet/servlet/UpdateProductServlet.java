package com.fssa.flowerybouquet.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.model.Product;
import com.fssa.flowerybouquet.service.ProductService;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		int productId = Integer.parseInt(request.getParameter("id"));
//		ProductService productService = new ProductService();
//		try {
//			Product product1 = productService.getProductById(productId);
//			request.setAttribute("product", product1);
//			RequestDispatcher rd = request.getRequestDispatcher("./updateForm.jsp");
//			rd.forward(request, response);
//		} catch (SQLException | DAOException e) {
//			System.out.println(e.getMessage());
//			e.printStackTrace();
//		}
//
//
//	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productInt = Integer.parseInt(request.getParameter("productid"));
		String productName = request.getParameter("name");
		String productImg = request.getParameter("image");
		Double productPrice = Double.parseDouble(request.getParameter("price"));
		String productCatgy = request.getParameter("category");

		Product product = new Product();

		product.setProductId(productInt);
		product.setProductName(productName);
		product.setProductImageURL(productImg);
		product.setProductPrice(productPrice);
		product.setProductCategory(productCatgy);

		try {
			ProductService productService = new ProductService();
			productService.updateProduct(product);request.setAttribute("success", "Successfully Update The Product");
			RequestDispatcher dis = request.getRequestDispatcher("/GetAllProductServlet");
			dis.forward(request, response);
		} catch (DAOException | SQLException | IllegalArgumentException e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher dis = request.getRequestDispatcher("./updateform.jsp");
			dis.forward(request, response);
		}

	}

}
