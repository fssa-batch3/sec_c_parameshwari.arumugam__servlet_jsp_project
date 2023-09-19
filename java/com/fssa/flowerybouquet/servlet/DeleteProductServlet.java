package com.fssa.flowerybouquet.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.flowerybouquet.dao.DAOException;
import com.fssa.flowerybouquet.service.ProductService;

/**
 * Servlet implementation class DeleteProductServlet1
 */
@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteProductServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		
		int productId = Integer.parseInt(request.getParameter("productid"));

		ProductService productService = new ProductService();

		try {

			productService.deleteProduct(productId);
			response.getWriter().append("Success");
			response.sendRedirect(request.getContextPath() + "/GetAllProductServlet");
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
