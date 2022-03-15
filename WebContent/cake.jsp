<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<title>케이크</title>
<jsp:include page="Header.jsp"/>

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
            padding-bottom:100px;
        }

    </style>
    </head>
    
    <body>
    
    <!--    even area-->
     <div>
        <p class ="box"></p>
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
                    <span class="name">우유카라멜이 즐겁소<br></span>
                    
                    <div class="chef-item">
                        <div class="thumb">
                            <div class="overlay">
                                <ul class = "social-icons">
                                    <p class ="whi">우유카라멜맛 가나슈와 우유향 버터크림의 조합이 달콤한 21년 스페셜 케이크</p>
                                </ul>
                                <div>
                                    <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
                                    <p>1</p>
                                    <a href="product/cake1.jsp" class="btn_more"><h6>MORE</h6></a>
                                </div>
                            </div>
                            <img src="assets/images/184630.jpg" alt="Chef #1">
                            
                        </div>
                    </div>
                 </div>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                    <div class="item">
                    <span class="name">어몽어스 빅 쇼콜라 볼<br></span>
                    <div class="chef-item">
                        <div class="thumb">
                            <div class="overlay">
                                <ul class = "social-icons">
                                    <p class ="whi">진한초코&amp;헤이즐넛 크림 사이 초코쿠키샌드, 달콤한 크런치 초콜릿 코팅 마무리로 바삭한 식감의 귀여운 어몽어스 크루들의 케이크</p>
                                </ul>
                                <div>
                                    <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
                                    <p>1</p>
                                    <a href="product/cake2.jsp" class="btn_more"><h6>MORE</h6></a>
                                </div>
                            </div>
                            <img src="assets/images/184704.jpg" alt="Chef #2">
                        </div>
                    </div>
                    </div>
                     </a>    
                </div>
                <div class="col-lg-4">
                    <a href="#">
                    <div class="item">
                    <span class="name">어몽어스 임포스터 쇼콜라<br></span>
                    <div class="chef-item">
                        <div class="thumb">
                            <div class="overlay">
                                <ul class = "social-icons">
                                    <p class ="whi">강렬한 레드 글라사주 속 진한 초코 가나슈 생크림과 크런치 초코볼을 샌드한 반전 매력 케이크</p>
                                </ul>
                                <div>
                                    <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
                                    <p>1</p>
                                    <a href="product/cake3.jsp" class="btn_more"><h6>MORE</h6></a>
                                </div>
                            </div>
                            <img src="assets/images/184722.jpg" alt="Chef #3">
                        </div>
                    </div>
                    </div>
                     </a>
                    
                </div>
                <div class="col-lg-4">
                    <a href="#">
                    <div class="item">
                    <span class="name">엘사 스노우 초코<br></span>
                    <div class="chef-item">
                        <div class="thumb">
                            <div class="overlay">
                                <ul class = "social-icons">
                                    <p class ="whi">화이트&amp;초코시트, 두 가지 초코크림이 만드는 달콤한 조합</p>
                                </ul>
                                <div>
                                    <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
                                    <p>1</p>
                                    <a href="product/cake4.jsp" class="btn_more"><h6>MORE</h6></a>
                                </div>
                            </div>
                            <img src="assets/images/184743.jpg" alt="Chef #4">
                        </div>
                    </div>
                    </div>
                      </a>
                </div>
                <div class="col-lg-4">
                    <a href="#">
                    <div class="item">
                    <span class="name">진한 우유 생크림 케이크 1호<br></span>
                    <div class="chef-item">
                        <div class="thumb">
                            <div class="overlay">
                                <ul class = "social-icons">
                                    <p class ="whi">촉촉한 화이트시트에 마스카포네를 넣어 우유 생크림과
                                        상큼한 베리콩피가 어우러진 뚜레쥬르 시그니처 생크림 케이크</p>
                                </ul>
                                <div>
                                    <p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p><p>1</p>
                                    <p>1</p>
                                    <a href="product/cake5.jsp" class="btn_more"><h6>MORE</h6></a>
                                </div>
                            </div>
                            <img src="assets/images/184813.jpg" alt="Chef #5">
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