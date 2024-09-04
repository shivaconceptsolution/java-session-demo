<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ram" method="post">
  <input type="text" name="txtnum1" placeholder="Enter First Number" />
  <br><br>
  <input type="text" name="txtnum2" placeholder="Enter Second Number" />
  <br><br>
   <input type="submit" name="btnsubmit" value="Add" /> <br>
   <input type="submit" name="btnsubmit" value="Substraction" /><br>
   <input type="submit" name="btnsubmit" value="Multiplication" /><br>
   <input type="submit" name="btnsubmit" value="Division" /><br>
</form>

<%
if(request.getParameter("q")!=null)
{
	out.print(request.getParameter("q"));
}
%>
</body>
</html>