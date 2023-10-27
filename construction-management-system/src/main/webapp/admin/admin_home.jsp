<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../components/allcss.jsp" %>
<link rel="stylesheet" href="admin.css">

</head>
<body>
<%@ include file="admin_navbar.jsp" %>
<%
	User str = (User) session.getAttribute("adminObj");
	if (str == null) {
		response.sendRedirect("../Admin_login.jsp");
	}
	%>
    <main>
    <div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_5terre.jpg">
      <img src="../img/house1.jpg" alt="Cinque Terre" width="600" height="400">
    </a>
    <div class="desc">Dream House</div>
  </div>
</div>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_forest.jpg">
      <img src="../img/house2.jpg" alt="Forest" width="600" height="400">
    </a>
    <div class="desc">Dream House</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="../img/image4.jpg">
      <img src="../img/house3.jpg" alt="Northern Lights" width="600" height="400">
    </a>
    <div class="desc">Dream House</div>
  </div>
</div>

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="">
      <img src="../img/house4.jpg" alt="Mountains" width="600" height="400">
    </a>
    <div class="desc">Dream House</div>
  </div>
</div>
    
    </main>
	

</body>
</html>