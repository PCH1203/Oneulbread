<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>brand story</title>
   <jsp:include page="Header.jsp"/>
   
    <style>
        .brandstory {
            background-color: rgb(247, 240, 218);
            margin-top: 200px;
            margin-bottom: 150px;
            margin-right:10%;
            margin-left:10%;
            padding-bottom:100px;
           
        }
      
        .story1,
        .story2 {
            color: rgb(154, 105, 45);
            line-height: 2;
            font-weight: 500;
            margin: 70px;
            font-size: 16px;
        }

        .story1 {
            padding-top: 50px;
            margin-left: 50px;
        }

        .story2 {
            padding-bottom: 50px;
            margin-right: 50px;
            text-align: left;
        }

        .largetext {
            font-size: 30px;
            font-weight: 600;
            text-align: left;
            color: saddlebrown;
            line-height:2;

        }
        p{
           font-size:18px;
           line-height:2;
        }
        .fmap{
           min-width: 300px; 
           min-height:200px;      
           margin-left:10%;
           margin-top: 10%;
            }

        .fmap1 {
            margin-left: 50px;
            position:relative;
        }

        .foot {
            float: left;
        }

        footer {
            margin-top: 100px;
        }
        
    </style>
</head>

<body>

    <div class=" brandstory">
        <div class="row story1">
            <img src="assets/images/storyimg.png" class="col-md-5 ">
            <p class="col-md-1"></p>

            <P class="col-md-6">
                <span class="largetext">
                <b>매장에서 직접 굽는 <br> 신선한 베이커리</b></span>
                <br> <br>
                2021년 비트캠프 강남 본원에 처음 매장을 연 五늘-빵은<br>
                      다른 빵집보다
                      훨씬 맛있습니다. <br>
                      매일 아침 五시 신선한 재료들을 공급받아<br>
                      직접 구워 판매합니다.
            </P>
        </div>
        <div class="row story2">

            <p class="col-md-6">
                <span class="largetext">
                <b>갓 구운 신선함이 매장을 <br> 가득 채웁니다.</b></span>
                <br><br>
                                五늘-빵 이라는 이름은 B반의 다섯번째 조라는 뜻과<br>
                         매일 아침 五시 직접 구은 신선한 빵만을 판매하겠다는<br>
                         저희 베이커리 만의 다짐이 담겨져 있습니다.
            </p>
            <p class="col-md-1"></p>
            <img src="assets/images/storyimg2.png" class="col-md-5 ">

        </div>

                    
        <!-- 1. 지도 노드 -->
        <div class="row">
            <div class="col-md-6 fmap1">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.362197229956!2d127.02682881558711!3d37.499374735728786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca159d4b10f83%3A0xab560cb73063209f!2z7ISc7Jq47Yq567OE7IucIOqwleuCqOq1rCDsl63sgrzrj5kg6rCV64Ko64yA66GcOTTquLggMjA!5e0!3m2!1sko!2skr!4v1633011880029!5m2!1sko!2skr"
                     style="border:0;" allowfullscreen="" loading="lazy" class="fmap"></iframe>
             </div>
            
            <p class="col-md-4">
                <span class="largetext"> 
                <b> 오시는길</b>
                </span>
                <br><br><br>
                <b>주소:</b> 서울특별시 강남구 역삼동 강남대로94길 20 <br><br>
                <b>지하철:</b> 2호선 , 강남역 12번 출구 <br><br>
                <b>버스:</b> 340, 640, 740
            </p>
        </div>
    </div>
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