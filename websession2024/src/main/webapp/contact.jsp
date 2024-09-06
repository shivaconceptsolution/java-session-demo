<%@include file="header.jsp" %>
<section>
<h1>Welcome in contact us page</h1>
<div style="float:left">
  <h1>Our Address</h1>
  <p>Scheme no 54 Vijaynagar near SICA School Indore</p>
  <form action="ContactSer" method="post">
    <p><input type="text" placeholder="enter name" name="txtname" /></p>
    <br>
    <p><input type="text" placeholder="enter email" name="txtemail" /></p>
        <br>
    <p><input type="text" placeholder="enter message" name="txtmsg" /></p>
        <br>
    <p><input type="submit" name="btnsubmit" value="Submit" /></p>
  </form>
  
  <%
  if(request.getParameter("q")!=null){
	  out.print(request.getParameter("q"));
  }
  
  %>
</div>
<div style="float:right;margin-right:50px;">
<iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d29438.06774049108!2d75.87742582596248!3d22.7372171299587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d22.7180544!2d75.907072!4m5!1s0x3962fd53f8645383%3A0x4975c9392d3ed489!2sShiva%20Concept%20Solution%20Vijay%20nagar%20%7C%20Java%20Python%20Mern%20Stack%20Data%20Analytics%20Software%20Testing%20Devops%20AWS%20Salesforce%20Training!3m2!1d22.756305899999997!2d75.8890576!5e0!3m2!1sen!2sin!4v1725607932700!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
</section>
<%@include file="footer.jsp" %>