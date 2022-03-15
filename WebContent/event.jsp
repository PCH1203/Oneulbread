<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<jsp:include page="Header.jsp" />
<head>
<title>5늘빵</title>
</head>

<body>
 
    <section class="eventbox" id="chefs">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4 text-center">
                    <div class="section-heading">
                        <h6>-event-</h6>
                        <h2>진행중인 이벤트</h2>
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-lg-4 eventimg">
                    <a href="tday.jsp"><img src="assets/images/event_tday.png" id="eventig">
                    <hr>
                    <h5><br>SKT T DAY</h5>
                    <p>-매월 15일 29일-</p></a>
                </div>
                
                <div class="col-lg-4 eventimg">
                        <a href="tday.jsp"><img src="assets/images/event-baking.png" id="eventig">
                           <hr>
                            <h5><br>베이킹 클래스 오픈</h5>
                            <p>-2021.09.28-</p></a>

                </div>
                
                <div class="col-lg-4 eventimg">
                    <a href="tday.jsp"><img src="assets/images/event-point.png" id="eventig">
                    <hr>
                    <h5><br>회원가입 이벤트</h5>
                    <p>상시진행</p></a>
                </div>
            </div>
            
            
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4 text-center">
                    <div class="section-heading">
                        <h6><br><br><br><br>-class-</h6>
                        <h2>진행중인 베이킹 클래스</h2>
                    </div>
                </div>
            </div>
           
            <div class="row">
                <div class="col-lg-4 eventimg">
                    <a href="/event/list2.do?cn=스콘 클래스"><img src="assets/images/baking-scon.png" id="eventig">
                    <hr>
                    <h5><br>스콘클래스</h5>
                    <p>-강남-<br>2021.10.25</p></a>
                </div>
                
                <div class="col-lg-4 eventimg">
                        <a href="baking.jsp"><img src="assets/images/baking-crople.png"  id="eventig">
                           <hr>
                            <h5><br>크로플 클래스</h5>
                            <p>-청담-<br>2021.11.28</p></a>

                </div>
                
                <div class="col-lg-4 eventimg">
                    <a href="baking.jsp"><img src="assets/images/baking-cake.png"  id="eventig">
                    <hr>
                    <h5><br>케익 클래스</h5>
                    <p>-강남-<br>2021.12.25</p></a>
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
    </script>
</body>

</html>    