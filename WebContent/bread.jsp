<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<title>빵</title>
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
				<div class="col-lg-4">
					<div class="item">
						<span class="name">연유 버터 라우겐<br></span>

						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">담백한 라우겐 빵 속에 달콤한 연유와 AOP 레스큐어 버터가 샌드된 트렌드
											인기제품</p>
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
										<a href="product/bread1.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/123.jpg" alt="Chef #1">
							</div>
						</div>
					</div>

				</div>
				<div class="col-lg-4">
					  <div class="item">
                        <span class="name">치즈듬뿍카레번</span>
					<a href="#">
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">파마산치즈를 뿌려 구운 부드러운 빵에 진한 카레를 듬뿍 넣고 모짜렐라 치즈를
											얹어 구운 제품</p>
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
										<a href="product/bread2.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/182135.jpg" alt="Chef #2">
							</div>
						</div>
					</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					<div class="item">
                            <span class="name">빵속에 리얼 초코</span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">달콤하고 진한 벨기에산 초코크림이 부드러운 빵 속에 가득 채워져 간식으로
											즐기기 좋은 제품</p>
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
										<a href="product/bread3.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/12345.jpg" alt="Chef #3">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					<div class="item">
                            <span class="name">리얼초코소라빵</span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">소라 모양의 빵에 진한 초코크림이 들어있는 간식빵</p>
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
										<a href="product/bread4.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/234.jpg" alt="Chef #4">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					<div class="item">
                            <span class="name">트윈에그브래드</span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">삶은 계란이 빵 속에 통째로 쏙~ 맛있는 쌍둥이 모양의 계란빵</p>
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
										<a href="product/bread5.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/2345.jpg" alt="Chef #5">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					<div class="item">
                            <span class="name">앙! 쑥 크럼블</span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">향긋한 제주 쑥을 넣은 찰진 빵에 팥 앙금을 넣고 고소한 크럼블을 듬뿍 올려
											앙! 베어 물면 기분 좋은 쑥 향과 고소함에 빠지는 제품</p>
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
										<a href="product/bread6.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/23456.jpg" alt="Chef #6">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
				<div class="item">
                            <span class="name">모카패스트리식빵</span>
					<a href="#">
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">풍부한 모카 향과 바삭바삭한 패스트리로 만든 고소한 식빵</p>
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
										<a href="product/bread7.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/345.jpg" alt="Chef #7">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					<div class="item">
                            <span class="name">햄치즈 토마토 치아비타</span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">담백한 치아바타에 브런치햄과 모짜렐라치즈, 토마토가 매콤한 마요소스와 어우러진
											치아바타 샌드위치</p>
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
										<a href="product/bread8.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/182209.jpg" alt="Chef #8">
							</div>
						</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4">
					<a href="#">
					<div class="item">
                            <span class="name">부드러운후레쉬크림샌드빵</span>
						<div class="chef-item">
							<div class="thumb">
								<div class="overlay">
									<ul class="social-icons">
										<p class="whi">달콤하고 부드러운 버터크림이 사이사이에 듬뿍 샌드된 부드러운 간식빵 *크림속
											검은 반점은 바닐라씨드임으로 안심하고 드시길 바랍니다.</p>
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
										<a href="product/bread9.jsp" class="btn_more"><h6>MORE</h6></a>
									</div>
								</div>
								<img src="assets/images/123456.jpg" alt="Chef #9">
							</div>
						</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	
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