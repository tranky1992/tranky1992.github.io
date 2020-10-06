package com.bookstore.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.service.UserServices;


@WebServlet("/admin/create_user")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		UserServices userServices = new UserServices();
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
		userServices.createUser(request, response);
		userServices.listUser(request, response);
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
	}

}
