<%@ page import="spms.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>회원 목록</title>
<!-- Additional CSS Files -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css">
<link rel="stylesheet" href="../assets/css/templatemo-klassy-cafe.css">
<link rel="stylesheet" href="../assets/css/owl-carousel.css">
<script src="../assets/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../assets/css/login.css">
</head>

<body>
	<!-- JSTL(JSP Standard Tag Library) : JSP 확장 라이브러리로 리스트나 배열 표출 시 자주 사용
										  JSP에서 기본적으로 제공해주지 않기 때문에 taglib 링크를 걸어서 사용
										  c:out : 출력문을 위한 태그
										  			c:out value="출력할 값"
										  c:if : 조건문을 위한 태그
										  		 c:if test="조건" var="변수명" scope="request|session|application"
										  c:choose : case-when 문법
										  			 c:choose
										  			 	c:when test="참/거짓"
										  			 	c:when test="참/거짓"
										  			 	....
										  c:foreach : 반복적인 작업을 위한 태그
										  			  c:foreach var="변수명" items="목록데이터" begin="시작인덱스" end="종료인덱스"-->
	
<body>
	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="../index.jsp" class="logo"> <img
							src="../assets/images/titlemain.png"
							align="klassy cafe html template"
							style="height: 80px; display: inline-block">
							<h4 style="display: inline-block;">오늘 빵</h4>

						</a>
						<!-- ***** Logo End ***** -->

						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="../index.jsp" class="active">Home</a></li>
							<li><a href="../about.html">브랜드 스토리</a></li>

							<li class="submenu"><a href="javascript:;">제품 안내</a>
								<ul>
									<li><a href="../new-item.html">신제품</a></li>
									<li><a href="../bread.html">빵</a></li>
									<li><a href="../cake.html">케이크</a></li>
									<li><a href="../sandwich.html">샌드위치</a></li>
								</ul></li>
							<li><a href="../event.html">이벤트</a></li>
							<!-- <li class=""><a rel="sponsored" href="https://templatemo.com" target="_blank">External URL</a></li> -->
							<li><a href="../service.html">FAQ</a></li>
							<li><c:if test="${empty Member or empty Member.email }">
									<a href="<%=request.getContextPath() %>auth/login.do">로그인</a>
								</c:if> <c:if test="${!empty Member and !empty Member.email }">
									${Member.name }
									<a href="<%=request.getContextPath() %>auth/logout.do">로그아웃</a>
								</c:if></li>
							<li><a href="../mypage.html">mypage</a></li>
							<!-- <li><a href="01. admin_index.html">관리자</a></li> -->
						</ul>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->
	<h1>회원 목록</h1>
	<p><a href="add.do">신규 회원</a></p>
	<!-- memberList라는 객체를 데이터 저장소에서 꺼냄
	     foreach문에서 memberList에 담겨있는 내용을 member라는 변수로 담아서 하나씩 사용하겠다 -->
	<c:forEach var="member" items="${memberList }">
	${member.no },
	<a href="update.do?no=${member.no }">${member.name }</a>,
	${member.email },
	${member.createDate }
	<a href="delete.do?no=${member.no }">삭제</a><br>
	</c:forEach>
	<jsp:include page="/Tail.jsp"/>
</body>
</html>