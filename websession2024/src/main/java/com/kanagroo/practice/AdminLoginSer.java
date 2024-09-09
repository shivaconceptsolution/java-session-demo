package com.kanagroo.practice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLoginSer
 */
@WebServlet("/AdminLoginSer")
public class AdminLoginSer extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
			Statement st = conn.createStatement();
			ResultSet x = st.executeQuery("select * from admin where username='"+request.getParameter("txtuname")+"' and password='"+request.getParameter("txtpass")+"'");
			if(x.next())
			{
				response.sendRedirect("AdminDashboard.jsp");
			}
			else
			{
				response.sendRedirect("adminlogin.jsp?q=invalid credentials");
			}
		}
			catch(Exception ex)
			{
				response.sendRedirect("AdminLogin.jsp?q="+ex.getMessage().toString());
			}
				}
	}


