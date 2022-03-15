<%@ page import="spms.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="Header.jsp" />
  <head>
   
    <title>Mypage</title>

    <style>
        .mypage{
            
            margin: 200px;
            padding: 100px;
            padding-left: 150px;
            padding-right: 60px;
            background-color: rgb(247, 240, 218);
        }
        .mypage h2{
            color: chocolate;
            text-decoration: underline;
            text-shadow: rgb(235, 201, 159) 1px 1px 1px;
            
        }
        
       .myp2 li{
           text-decoration: none;
            border-bottom: rgb(154, 105, 45) 1px solid;
            width: 250px;
            line-height: 3;
        }
        .myp2 a:hover{
            color:white;

        }

        .myp2 li a{
            color: rgb(154, 105, 45);
            font-size: 25px;
               }
        .circle{
            background-color: rgb(228, 119, 42);
            border-radius: 50%;
            width: 150px;
            height:150px;
            text-align: center;
            margin-right: 40px;
            
        }
        .circle p {
            color: white;
            font-size: 20px;
            padding-top: 45px;
            text-shadow: rgb(235, 201, 159) 1px 1px 1px;
        }
    </style>
    </head>
    
    <body>
 
    <!-- main -->
    <div class="mypage">
        <div class="myp1 row">
        <h2 class="col-md-4"> 
        
        <c:if test="${!empty Member and !empty Member.email }">
                           ${Member.name}</c:if> 님</h2> 
        <p class="col-md-2"> </p>
        <div class="circle col-md-2"><p>적립금<br>5000p</p></div>
        <div class="circle col-md-2"><p>예약<br>0건</p></div>
    </div>
    <div class="myp2 column">
    <form action="update.do" method="post">
    <ul>
        <li><a href="/member/update.do?no=${Member.no }">회원 정보 수정</a></li>
        <li><a href="#">예약 관리</a></li>
        <li><a href="/member/delete.do?no=${Member.no }" Onclick="return ConfirmDelete();" type="submit" >회원 탈퇴</a></li>
        <!-- <li><a type="button" value="회원탈퇴" onclick="location.href='/member/delete.do?memberNo=${member.no }';"><a>회원 탈퇴</li> -->
        <!--  <input type="button" value="회원 탈퇴" onclick="location.href='/member/delete.do?memberNo=${member.no }';">-->
        <!-- <input type="button" value="회원 탈퇴" onclick="location.href='/member/delete.do?memberNo=${member.no }';"> -->
    </ul>
    </form>
    </div> 
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
      
             //모달 확인버튼 누르면 새로고침   
  $(function() {
      $('#mbye').click(function() {
          alert("회원탈퇴가 완료 되었습니다.");
          location.replace('index.jsp');
      });
  }) ; 
             
  function ConfirmDelete()
  {
    var x = confirm("회원 탈퇴 하시겠습니까?");
    if (x)
        return true;
    else
      return false;
  }

    </script>
  </body>
</html>