package com.msc.dbms;

import java.io.IOException;
import java.sql.DriverManager;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;

@SuppressWarnings("serial")
@WebServlet("/Reg")
public class Regist extends HttpServlet {

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("fname");
		String email=request.getParameter("email");
		String username=request.getParameter("Uname");
		String password=request.getParameter("pass");	
		try {
			Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","2021239025");
			PreparedStatement st =(PreparedStatement) con.prepareStatement("insert into ex values (?,?,?,?)");
			st.setString(1, fname);
			st.setString(2, email);
			st.setString(3, username);
			st.setString(4, password);
			st.executeUpdate();
			response.sendRedirect("login.jsp");

		}
		catch(Exception e) {
			System.out.println(e);
		}

	}

}
