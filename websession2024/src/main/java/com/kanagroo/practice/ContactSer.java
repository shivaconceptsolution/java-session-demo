package com.kanagroo.practice;

import java.io.IOException;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ContactSer
 */
@WebServlet("/ContactSer")
public class ContactSer extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		Statement st = conn.createStatement();
		int x = st.executeUpdate("insert into contact(name,email,message) values('"+request.getParameter("txtname")+"','"+request.getParameter("txtemail")+"','"+ request.getParameter("txtmsg")+"')");
		if(x!=0)
		{
			response.sendRedirect("contact.jsp?q= Contact Added Successfully");
		}
		}
		catch(Exception ex)
		{
			response.sendRedirect("contact.jsp?q="+ex.getMessage().toString());
		}
			}
	}



