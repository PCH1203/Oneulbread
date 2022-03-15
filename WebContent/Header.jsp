<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//HttpSession 데이터 보관소에 저장된 member 객체 꺼내서 사용
	//Member member = (Member)session.getAttribute("Member");
%>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Additional CSS Files -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/font-awesome.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/templatemo-klassy-cafe.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/owl-carousel.css">
<script
	src="<%=request.getContextPath() %>/assets/js/bootstrap.bundle.min.js"></script>
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-3.6.0.min.js"></script>
</head>

<!-- ***** Preloader Start ***** -->
<div id="preloader">
	<div class="jumper">
		<div></div>
		<div></div>
		<div></div>
	</div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<nav class="main-nav">
					<!-- ***** Logo Start ***** -->
					<a href="<%=request.getContextPath() %>/index.jsp" class="logo">
						<img
						src="<%=request.getContextPath() %>/assets/images/titlemain.png"
						align="klassy cafe html template"
						style="height: 80px; display: inline-block">
						<h4 style="display: inline-block;">오늘 빵</h4>

					</a>
					<!-- ***** Logo End ***** -->

					<!-- ***** Menu Start ***** -->
					<ul class="nav">
						<li><a href="<%=request.getContextPath() %>/index.jsp"
							class="active">Home</a></li>
						<li><a href="<%=request.getContextPath() %>/about.jsp">브랜드
								스토리</a></li>

						<li class="submenu"><a href="javascript:;">제품 안내</a>
							<ul>
								<li><a href="<%=request.getContextPath() %>/production/list.do?pageNo=0">신제품</a></li>
								<li><a href="<%=request.getContextPath() %>/bread.jsp">빵</a></li>
								<li><a href="<%=request.getContextPath() %>/cake.jsp">케이크</a></li>
								<li><a href="<%=request.getContextPath() %>/sandwich.jsp">샌드위치</a></li>
							</ul></li>
						<li><a href="<%=request.getContextPath() %>/event.jsp">이벤트</a></li>
						<!-- <li class=""><a rel="sponsored" href="https://templatemo.com" target="_blank">External URL</a></li> -->
						<li><a href="<%=request.getContextPath() %>/service.jsp">FAQ</a></li>
						
						<li>
							<c:if test="${empty Member or empty Member.email }">
									<a href="<%=request.getContextPath() %>/auth/login.do">mypage</a>
							</c:if> 
							
							<c:if test="${!empty Member and Member.email eq 'admin'}">
									<a href="<%=request.getContextPath() %>/index/admin_index.jsp">관리자페이지</a>
							</c:if>
							
							<c:if test="${!empty Member and !empty Member.email }">
								<c:if test="${!empty Member and Member.email ne 'admin'}">
									<a href="<%=request.getContextPath() %>/mypage.jsp">${Member.name} mypage</a>
								</c:if>
							</c:if>
							
						</li>
						
						<li>
							<c:if test="${empty Member or empty Member.email }">
									<a href="<%=request.getContextPath() %>/auth/login.do">로그인</a>
							</c:if> 
							
							<c:if test="${!empty Member and !empty Member.email }">
									<a href="<%=request.getContextPath() %>/auth/logout.do">로그아웃</a>
							</c:if> 
						</li>
						<!-- <li><a href="01. admin_index.html">관리자</a></li> -->
					</ul>
					<a class='menu-trigger'> <span>Menu</span>
					</a>
					<!-- ***** Menu End ***** -->
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- ***** Header Area End ***** -->
