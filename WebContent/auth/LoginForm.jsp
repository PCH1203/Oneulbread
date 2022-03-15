<%@ page import="spms.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<title>Login</title>
<jsp:include page="../Header.jsp" />
<style>
 /* 그룹(로고이미지와 로그인박스 ) 전체적인 위치 조절 */
    .main{
      margin-top: 150px;
      margin-bottom: 50px ;
      background-color: rgb(247, 240, 218);
      padding-top: 100px;
      justify-content: center;
    }
    
    .textlogo{
        padding:0px;
    }
    .logoimg{
      
        height: 470px;
        min-width: 250px;
    }
   
    /* 로그인박스 안, 글자 등 위치조절 */
    .signin{
        width: 450px;
        height:350px;
        color:rgb(185, 147, 102);
        padding-left:50px;
        border: rgb(185, 147, 102) solid 3px;
        padding-top: 30px;
    
    }
    .signin h2{
        margin-left: 120px;
        margin-bottom: 50px;
        text-shadow: 1px 1px 1px rgb(160, 89, 56);
        
    }
    .signin label {
        width: 130px;
        font-size: 25px;
      
    }
    .signin .btn{
        padding-left: 70px;

    }
    .signin button:hover{
        background-color: saddlebrown;
        color: white;

    }
    .signin button{
        border: 0;
        padding-left: 10px;
        padding-right: 10px;
        margin-top: 20px;
        margin-right: 30px;
        color: rgb(185, 147, 102);
        background-color: rgb(247, 240, 218);
        font-size: 20px;
        text-shadow:1px 1px 1px sienna ;
    }
    .signin .btn a{
        color: rgb(185, 147, 102);
    }
    .signin .btn a:hover{
        color: white;
    }
   
   
</style>

<body>
	
	 <!-- main 영역-->
   <div class="row center-block main">
      <div class="textlogo">
         <img src="../assets/images/textlogo.png" class="col-md-6 logoimg">
      </div>
      <form class="signin" class="col-md-6" method="post" action="login.do">
         <h2>로그인</h2>
         <label for="">아이디 </label> <input type="text" name="email" placeholder="이메일을 입력하세요."><br>
         <br> <label for="">비밀번호</label> <input type="password"
            name="password" placeholder="비밀번호를 입력하세요."><br>
         <br>
         <div class="btn">
            <button type="submit" class="signupbtn1 ">로그인</button>
            <button type="button" class="signupbtn2">
               <a href="../signup.jsp"> 회원가입</a>
            </button>
         </div>
      </form>
   </div>

	<jsp:include page="../Tail.jsp" />
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