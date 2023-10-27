<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@ include file="user_navbar.jsp"%>
	<%
	String str = (String) session.getAttribute("successful");
	if (str != null) {
	%>
		<p class="fs-3 text-center text-primary"><%= str %></p>
	<%
	session.removeAttribute("successful");
	}
	%>
	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="3000">
				<img src="../img/construction3.jpg" class="d-block w-100" alt="..."
					height=500px>
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="../img/construction2.jpg" class="d-block w-100" alt="..."
					height=500px>
			</div>
			<div class="carousel-item">
				<img src="../img/construction4.jpg" class="d-block w-100" alt="..."
					height=500px>
			</div>
		</div>
	</div>
	<div class="container p-3">


		<p class="text-center fs-2">Latest Features Of our Application</p>

		<div class="row">
			<div class="col-md-8 offset-md-2 p5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% secure</p>
								<p>lorem ipsum dolor sit amet, consector adipicing elit
									Coljuept,inventrue</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% secure</p>
								<p>lorem ipsum dolor sit amet, consector adipicing elit
									Coljuept,inventrue</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% secure</p>
								<p>lorem ipsum dolor sit amet, consector adipicing elit
									Coljuept,inventrue</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% secure</p>
								<p>lorem ipsum dolor sit amet, consector adipicing elit
									Coljuept,inventrue</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
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

</main>u
</body>
</html>