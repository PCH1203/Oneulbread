<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="Header.jsp" />
<head>
    <title>5늘빵</title>
 
</head>

<body>

    <!--    content -->
    <div style="text-align: center; margin-top: 200px; ">
        <a href="event.html" style=" color: black; border: 5px solid gold; background-color: gold;">뒤로가기</a>
        <br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4 text-center">

                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 eventimg">
                    <img src="../assets/images/scon.jpg" style="height: 400px;">
                </div>

                <div class="col-lg-6 eventimg">
                    <h4><br>스콘 클래스<br><br></h4>
         <table class="table table-hover" id="mytable">
                  <thead id="thead">
                      <tr>                  
                          <th>지점</th>
                          <th>클래스명</th>
                          <th>시간</th>
                          <th>인원</th>
                          <th></th>                    
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach var="event" items="${eventList }">
                  <tr>
                     <td>${event.location }</td>            
                     <td>${event.class_name }</td>
                     <td>${event.time }</td>
                     <td>${event.personal }</td>                           
                  </tr>
                      </c:forEach>
                    </tbody>
          </table>
                </div>
                
            </div>
            <div>
                <h3><br><br>- 예약하기 -</h3>
                <form style="text-align: left;">
                <table style="text-align: left;">
                       
                        <tr>
                            <td>이름 </td>
                            <td>: <input type="text" id="bak_bok_name" size="15" minlength="2" maxlength="15"></td> 
                        </tr>
                        <tr>
                            <td>전화번호 </td>
                            <td>: <input type="tel" id="bak_bok_tel"></td> 
                        </tr>
                        <tr>
                            <td>이메일 </td>
                            <td>: <input type="email" id="bak_bok_email"></td> 
                        </tr>
                        
                        <tr>
                            <td colspan="2" style="text-align: center;"><br><br><input type="submit" value="예약하기" onclick="javascript:btn();"></td>
                        </tr>
                    </table>
                </form>
                    </div>
            <br><br><br>
            <a href="#top" style="color: black; border: 5px solid gold; background-color: gold;">맨위로</a>
        </div>
    </div>
    <jsp:include page="Tail.jsp" />

    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>
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
        //예약하기 버튼 클릭시 예약 완료 안내
        function btn(){ alert('예약이 완료 되었습니다'); }

    </script>
</body>

</html>