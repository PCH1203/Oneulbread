<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!DOCTYPE html>
<html lang="ko">
<jsp:include page="Header.jsp" />
<head>
<title>5늘빵</title>
    <style>
        .faqmain {
            height: 500px;
            padding-top: 50px;   
        }

        .mainhead {
            text-align: center;
            padding-top: 30px;
            height: 305px; 
            background: rgb(247, 240, 218);
        }
        .headment {
            color: black;
            margin-top: 120px;
            font-weight: 400;
            line-height: 50px;
            letter-spacing: -0.04em;
            font-size: 34px;
        }
        h5 {
            display: block;
        }
        h3 {
            display: block;
        }
        input[id*="answer"]{
            display: none;
        }
        input[id*="answer"] + label {
            display: block;
            padding: 20px;
            border: 1px solid #184f3b;
            border-bottom: 0;
            color: #fff;
            font-weight: 900;
            background: #184f3b;
            cursor: pointer;
            position: relative;
        }
        input[id*="answer"] + label em {
            position: absolute;
            top: 50%;
            right: 10px;
            width: 30px;
            height: 30px;
            margin-top: -15px;
            display:inline-block;
            background:url('assets/images/033755.jpg') 0 0 no-repeat;
        }
        input[id*="answer"] + label + div {
            max-height: 0;
            transition: all .35s;
            overflow:hidden;
            background: #ecefe4;
            font-size: 11px;
        }
        input[id*="answer"] + label + div p {
            display: inline-block;
            padding: 20px;
        }
        input[id*="answer"]:checked + label + div{max-height: 100px;}
        input[id*="answer"]:checked + label + em{background-position: 0 -30px;}

        .accordion {
           /*  width: 1000px;
            height: 720px;
            margin: auto; */
            margin-left:15%;
            margin-right:15%;
            padding-left: 20px;
            padding-right: 20px;
            padding-top: 170px;
        }
    </style>
    </head>
    
    <body>
    
  

    <div class="faqmain" id="faqmain">
        <div class="mainhead" id="mainhead">
            <h3 class="headment">FAQ</h3>
            <h5 class="headment">고객센터</h5>     
            <br>     
            <p class="headment2"><h6>평일 오전 11:00 - 오후 6:00</h6></p>
            <p class="headment2"><h6>점심 오후 1:00 - 오후 2:30</h6></p>
            <p class="headment2"><h6>1644-0000</h6></p>
        </div>
    <div>
    <!--메인 페이지-->   
        <div class="accordion">
            <input type="checkbox" id="answer01">
            <label for="answer01">점포마다 판매되는 제품의 가격이 다를 수도 있나요?<em></em></label>
            <div><p>매장마다 제품의 가격이 동일하지 않을 수 있습니다.</p></div>
            <input type="checkbox" id="answer02">
            <label for="answer02">제품 예약은 어떻게 해야하나요?<em></em></label>
            <div><p>원하시는 제품은 수령일 기준 최소 2일 전(평일 기준) 매장으로 예약을 하셔야합니다. 
                매장마다 예약이 가능한 제품이 다를 수 있으니 매장으로 문의 부탁드립니다.</p></div>
            <input type="checkbox" id="answer03">
            <label for="answer03">비닐 봉투는 유상 제공인가요?<em></em></label>
            <div><p>자원의 절약과 재활용 촉진에 관한 법률에 따라 비닐 봉투는 무상으로 제공해 드릴 수가 없습니다. 
                따라서 뚜레쥬르에서는 비닐 봉투를 유상으로 제공하고 있습니다.</p></div>
            <input type="checkbox" id="answer04">
            <label for="answer04">쿠킹클래스 예약 확인은 어디서 하나요?<em></em></label>
            <div><p>로그인 이후 마이페이지에서 확인 가능하십니다!</p></div>
        </div>
    
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
        
    </script>
  </body>
</html>