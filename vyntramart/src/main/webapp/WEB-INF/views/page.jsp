<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="icon-fonts" value="/resources/icon-fonts" />
<spring:url var="img" value="/resources/img" />
<spring:url var="js" value="/resources/js" />
<spring:url var="Source" value="/resources/Source" />

<!-- Getting directory routePath -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zxx">
<head>
		<title>VyntraMart-${title}</title>
		<script>
			window.menu = '${title}';
		</script>
		<meta charset="UTF-8">
		<meta name="description" content=" Divisima | eCommerce Template">
		<meta name="keywords" content="divisima, eCommerce, creative, html">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Favicon -->
		<link href="img/favicon.ico" rel="shortcut icon" />
		
		<!-- Google Font -->
		<link
			href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i"
			rel="stylesheet">
		
		
		<!-- Stylesheets -->
		<link rel="stylesheet" href="${css}/bootstrap.min.css" />
		<link rel="stylesheet" href="${css}/font-awesome.min.css" />
		<link rel="stylesheet" href="${css}/flaticon.css" />
		<link rel="stylesheet" href="${css}/slicknav.min.css" />
		<link rel="stylesheet" href="${css}/jquery-ui.min.css" />
		<link rel="stylesheet" href="${css}/owl.carousel.min.css" />
		<link rel="stylesheet" href="${css}/animate.css" />
		<link rel="stylesheet" href="${css}/style.css" />
		
		
		<!--[if lt IE 9]>
				  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
			<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section include -->
	<%@include file="./shared/header.jsp"%>



	<!-- Home section included -->
	<c:if test="${userClickHome==true}">
		<%@include file="home.jsp"%>
	</c:if>

	<!-- load only when user click about us -->
	<c:if test="${userClickAbout==true}">
		<%@include file="about.jsp"%>
	</c:if>

	<!-- load only when user click contact -->
	<c:if test="${userClickContact==true}">
		<%@include file="contact.jsp"%>
	</c:if>
	
	<!-- load only when user click Men -->
	<c:if test="${userClickAllMenProducts==true}">
		<%@include file="MenProduct.jsp"%>
	</c:if>
	
	<c:if test="${userClickMenCategoryProducts==true}">
		<%@include file="MenProduct.jsp"%>
	</c:if>
	
	<!-- load only when user click Women -->
	<c:if test="${userClickAllWomenProducts==true}">
		<%@include file="WomenProduct.jsp"%>
	</c:if>
	
	<c:if test="${userClickWomenCategoryProducts==true}">
		<%@include file="WomenProduct.jsp"%>
	</c:if>
	<!-- Footer section -->
	<%@include file="./shared/footer.jsp"%>
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="${js}/jquery-3.2.1.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/jquery.slicknav.min.js"></script>
	<script src="${js}/owl.carousel.min.js"></script>
	<script src="${js}/jquery.nicescroll.min.js"></script>
	<script src="${js}/jquery.zoom.min.js"></script>
	<script src="${js}/jquery-ui.min.js"></script>
	<script src="${js}/main.js"></script>
	<script src="${js}/myapp.js"></script>
</body>
</html>
