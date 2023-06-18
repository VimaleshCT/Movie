 
package com.msc.dbms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");
		
		RequestDispatcher obj = null;
		
		if(Validation.loginValidity(username, password)) {
			obj = request.getRequestDispatcher("/Result Pages/index.html");
			request.setAttribute("uname", username);
			obj.forward(request, response);
		}
		else {
			obj = request.getRequestDispatcher("/Result Pages/Failure.jsp");
			request.setAttribute("uname", username);
			obj.forward(request, response);
		}
	}
}
