<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="Header.jsp" />
<head>

<title>member</title>

<style>
       .member{
        background-color: rgb(247, 240, 218);
        height: 650px;
        margin-top: 200px;
        margin: 200px;
        margin-bottom: 100px;
         position: relative;
         justify-content: center;
       }
       .member h2{
           color:  chocolate;;
           border-bottom: chocolate 2px solid;
           position : absolute;
           top: 10%;
           left: 20%;

       }
       .member ul{
        left: 20%;
        top: 30%;
        position: absolute;
       }
       .member li{
        border-bottom: rgb(154, 105, 45) 1px solid;
        line-height: 3;
        /* width: 500px; */
        padding-top: 15px;
        max-width: 550px;
        min-width: 30px;
       }
       .member li a{
        font-color: rgb(154, 105, 45);
        font-size:x-large;
        width: 200px;
       }
       .member input{
            max-height: 40px;
            border: none;
            margin-left: 20px;
            width: 70%;
            font-size:large;

       }
       
       .member .btn{
          background-color:chocolate ;
          color:rgba(247, 240, 218);
          width:100px;
          height: 40px;
          margin-top: 50px;
          border: none;
          font-weight: bolder;
          margin-left:0;

       }
       .member .btn:hover{
            background-color: white;
            color: chocolate;

       }

   </style>
    </head>
    
    <body>
    
   
    <!-- main -->
    <div class=" row center-block  member" >
        <h2>회원 정보 수정</h2>
        <form action="/member/update.do" method="post">
        <input type="hidden" name="no" value="${member.no }">
        <ul class="col-lg-8">
            <li ><a>이&nbsp;&nbsp;&nbsp;름 :</a> <input type="text" name="name" value="${member.name }"></li> 
            <li ><a>연락처 :</a><input type="text" name="phone" value=" ${member.phone} " ></li>
            <li ><a>이메일 :</a><input type="text" name="email" value="${member.email }" ></li> 
            <li ><a>비밀번호 :</a><input type="text" name="password" value="${member.password}" ></li>
            <center><input type="submit" value="변경" class=btn></center>
        </ul>
        </form>
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
