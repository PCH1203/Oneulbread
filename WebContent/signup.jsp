<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<jsp:include page="Header.jsp" />
  <head>
    <title>회원가입</title>
    <link rel="stylesheet" href="assets/css/signup.css">
  </head>
    
    <body>
   
    <div class=signup>
        <form action="/member/add.do" method="post" class="form1" >
            <h2>회원가입</h2>
            <div class=s1 style="width: 500px;">
                <label for="id1">이름</label>
                <input type="text" name="name" placeholder="이름을 입력하세요">
                
            </div >
            <div class="s2" style="width: 500px;">
                <label for="pw">이메일</label>
                <input type="text" name="email" id="email" placeholder="이메일을 입력하세요" > 
                <button type="button" id="check" onclick="checkEmail();">CHECK</button> 
                 <input type="hidden" name="idDupli" id="valueUnchk"><br>
            </div>
            <div class="s3" style="width: 500px;">
                <label for="nm">휴대폰</label>
                <input type="text" name="phone" placeholder="휴대폰을 입력하세요"> <br>
            </div>
            <div class="s4" style="width: 500px;">
                <label for="ph">암호</label>
                <input type="password" name="password" placeholder="비밀번호를 입력하세요">
            </div>
                <br>
                
                <input type="submit" value="회원가입" class="signupbtn" ></input> <br>   
        </form>
	
    </div>
     <!-- *****Main Area End***** -->
  <jsp:include page="Tail.jsp" />
    <script>
        function checkEmail() {
        	var email = $("#email").val();
        	$.post('/member/checkEmail', {email : email}, function(data) {
        		var status = $.trim(data);
        		console.log(status);
        		if(status == 'fail') {
        			alert("중복된 아이디 입니다.");
        			$("#email").focus();
        		} else {
        			alert("사용가능한 아이디 입니다.");
        		}
        	});
        }
        
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
        
        
        
            //전화번호 - 찍기 Start//
    function inputNumberFormat(obj) {
     obj.value = dash(undash(obj.value));
 }

 function dash(str) {
     str = String(str);
     return str.replace(/(\d)(?=(?:\d{4})+(?!\d))/g, '$1-');
 }

 function undash(str) {
     str = String(str);
     return str.replace(/[^\d]+/g, '');
 }
    //전화번호 - 찍기 End//

    </script>
  </body>
</html>