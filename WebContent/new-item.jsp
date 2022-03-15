<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="ko">
<title>신제품</title>
<jsp:include page="Header.jsp" />

<head>

<style>
.box {
	width: 80px;
	height: 100px;
}

.btn_more {
	color: #ffffff;
	border: 1px solid #184f3b;
	background-color: #184f3b;
	display: inline-block;
}

.whi {
	color: white;
}

.searchbox {
	width: 40%;
	margin: 10px auto;
	text-align: center;
}

#searchvalue {
	border: none;
	background: #E0D3B6;
	padding: 6px;
	font-size: 18px;
	width: 80%;
	border-radius: 6px;
	color: white;
}

#searchvalue:focus {
	outline: none;
}

.name {
	font-size: 17px;
	font-weight: 470;
	color: #333;
}

#chefs {
	background-color: rgb(247, 240, 218);
	padding-bottom: 100px;
}
</style>


</head>

<body>

	<!--    even area-->
	<div>
		<p class="box"></p>
	</div>

	<!-- ***** Chefs Area Starts ***** -->
	<section class="section" id="chefs">
		<div class="searchbox">
			<input onkeyup="filter()" type="text" id="searchvalue"
				placeholder="검색어를 입력하세요.">
		</div>
		<div class="container">
			<div class="row">

				<c:forEach var="product" items="${productList}">
					<c:if test = "${product.category eq '신제품'}">
					<div class="col-lg-4">
						<div class="item">
							<span class="name">${product.product_name}<br></span>

							<div class="chef-item">
								<div class="thumb">
									<div class="overlay">
										<ul class="social-icons">
											<p class="whi">${product.summary}</p>
										</ul>
										<div>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<p>1</p>
											<a
												href="<%=request.getContextPath() %>/detaillist.do?detail_path=${product.detail_path}"
												class="btn_more">
												<h6>MORE</h6>
											</a>
										</div>
									</div>
									<c:if test="${product.path ne null and product.path ne '' }">
										<img src="<%=request.getContextPath() %>/${product.path}">
										<!-- assets/images/194838.jpg -->
									</c:if>
								</div>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
		</div>
	</section>
	<!-- ***** Chefs Area Ends ***** -->



	<jsp:include page="Tail.jsp" />
	<script>

        $(function () {
            var selectedClass = "";
            $("p").click(function () {
                selectedClass = $(this).attr("data-rel");
                $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("." + selectedClass).fadeOut();
                setTimeout(function () {
                    $("." + selectedClass).fadeIn();
                    $("#portfolio").fadeTo(50, 1);
                }, 500);

            });
        });

        //검색기능
        function filter() {

            var value, name, item, i;

            value = document.getElementById("searchvalue").value.toUpperCase();
            item = document.getElementsByClassName("item");

            for (i = 0; i < item.length; i++) {
                name = item[i].getElementsByClassName("name");
                if (name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
                    item[i].parentNode.style.display = "flex";
                } else {
                    item[i].parentNode.style.display = "none";
                }
            }
        }
    </script>
</body>

</html>