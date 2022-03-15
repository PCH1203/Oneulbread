<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<title>샌드위치</title>
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


	<div>
		<p class="box"></p>
	</div>



	<!-- ***** Chefs Area Starts ***** -->
	<section class="section" id="chefs">
	<div class="searchbox">
            <input onkeyup="filter()" type="text" id="searchvalue" placeholder="검색어를 입력하세요.">
        </div>
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					 <div class="item">
                    <span class="name">통밀레드치킨샌드위치<br></span>
					<div class="chef-item">
						<div class="thumb">
							<div class="overlay">
								<ul class="social-icons">
									<p class="whi">매콤한 감칠맛의 타코치킨과 담백한 치아바타, 치즈가 어우러진 샌드위치</p>
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
									<a href="product/sandwich1.jsp" class="btn_more"><h6>MORE</h6></a>
								</div>
							</div>
							<img src="assets/images/192214.jpg" alt="Chef #1">

						</div>
					</div>
					</div>

				</div>
				<div class="col-lg-4">
					<a href="#">
					 <div class="item">
                    <span class="name">레드타코치킨 샌드위치<br></span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">매콤한 치폴레소스 치킨과 아삭한 야채, 부드러운 치즈가 어우러진 콜드 샌드위치</p>
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
										<a href="product/sandwich2.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/192233.jpg" alt="Chef #2">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					 <div class="item">
                    <span class="name">매콤아삭맛살 샌드위치<br></span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">담백한 꽃맛살샐러드와 매콤마요소스, 아삭한 파프리카, 오이, 야채가 더해진
											신선한 샌드위치</p>
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
										<a href="product/sandwich3.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/192249.jpg" alt="Chef #3">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					 <div class="item">
                    <span class="name">반숙란샌드위치<br></span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">곡물식빵에 계란 샐러드와 반숙란이 통째로 들어가 담백 듬직한 모닝 샌드위치</p>
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
										<a href="product/sandwich4.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/192310.jpg" alt="Chef #4">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					 <div class="item">
                    <span class="name" >싱그러운 맛난 감자샌드위치<br></span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">고소한 감자샐러드와 신선한 야채가득 넣어 더 싱그러운 맛과 만난 뚜레쥬르
											샌드위치</p>
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
										<a href="product/sandwich5.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/192338.jpg" alt="Chef #5">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					 <div class="item">
                    <span class="name">불고기 가득 샌드위치<br></span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">담백한 불고기를 가득 넣고, 아삭한 파프리카, 신선한 야채로 맛을 더한
											샌드위치</p>
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
										<a href="product/sandwich6.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/192352.jpg" alt="Chef #5">
							</div>
						</div>
						</div>
					</a>
				</div>
	</section>
	<!-- ***** Chefs Area Ends ***** -->
	<jsp:include page="Tail.jsp" />
	<script>
        

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
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