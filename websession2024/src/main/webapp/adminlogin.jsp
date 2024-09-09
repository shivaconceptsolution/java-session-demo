<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Admin Login Form</h1>
<br>
<form action="AdminLoginSer" method="post">
<input type="text" name="txtuname" placeholder="Enter username" />
<br><br>
<input type="password" name="txtpass" placeholder="Enter password" />
<br><br>
<input type="submit" name="btnsubmit" value="Login" />
</form>
<%
  if(request.getParameter("q")!=null){
	  out.print(request.getParameter("q"));
  }
  
  %>
</center>
</body>
</html>