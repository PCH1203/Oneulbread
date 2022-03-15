<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>5늘빵 | 관리자 페이지 | 이벤트 관리</title>
     <!-- Additional CSS Files -->
     <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
     <link rel="stylesheet" href="../assets/css/admin_templatemo-klassy-cafe.css">
     <link rel="stylesheet" href="../assets/css/owl-carousel.css">
     
     <script src="../assets/js/bootstrap.bundle.min.js"></script>
     <script src="../assets/js/jquery-3.6.0.min.js"></script>
     
<!-- [스타일 영역] ======================================================================================================================  -->
     <style>
         
          .header-area.header-sticky {
            background-color: rgba(50, 50, 50, 0.7);
        }
        #test1 {           
           margin-top: 0px;           
           width: 100%;
           height: 500px;
           background-color: rgba(150,75,0, 1);
        }
        .eventement {
            padding-top: 140px;
            text-align: center;
            color: white;
        }      
         h2 {
             margin-top: 50px;
             margin-bottom: 30px;
             margin-left: 30px;
         }
         #maintable {
             text-align: center;
             margin-top: 20px;
         }
         .countbtn {
             background-color: blue;

         }
         #pop_out {
             width: 40px;            
             
         }
         #price {
             width : 100px;            
         }
         #btn {
             text-align: right;
             margin-right: 200px;
             margin-top: 30px;
         }
         .main {
            width: 100%;
            height: 1500px;
            /* background-color: rgb(247, 240, 218);                */
                  
        }
        .mainhead {
            
            margin-top: 0px;            
            width: 100%;
            height: 740px;
            background-color: rgba(150,75,0, 1);
        }
        .headment {
            color: white;
            margin-top: 150px;
            font-weight: 400;
            line-height: 50px;
            letter-spacing: -0.04em;
            font-size: 34px;
        }       
        .headicon {
            display: flex;
            justify-content: center;
            margin: 40px auto;
        }
        .mainbody {
            max-width: 1140px;
            margin: 20px auto 0px;
            padding:0px 16px ;           
        }
  
        .searchbar {
            width: 100%;
            height: 40px;
            position: relative;
        }
      
        #bannerimg {
            margin-top: 300px;
        }
        .modal-content {
            background: rgba(240, 211, 142, 0.7);
        }
        #addrow_, #delrow, #submit {
            background-color: rgba(150,75,0, 1);
            border-style: none;
        }
        footer {
            background-color: rgba(50, 50, 50, 1);
        }
        .header-area .main-nav .nav li a  {
            color: white;
        }        
         #delbtn {
        background-color : rgba(13,70,51, 1);
        border-style: none;
        }
       
     </style>

  
    </head>
    
    <body>
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="../index.jsp" class="logo">
                            <img src="../assets/images/titlemain.png" align="klassy cafe html template" style="height: 80px; display: inline-block">
                            <h4 style="display: inline-block;">오늘 빵 | 이벤트 관리</h4>
                            
                        </a>
                        <!-- ***** Logo End ***** -->
                        
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="../index/admin_index.jsp" class="active">Admin Main</a></li>
                            <li><a href="list.do">이벤트 관리</a></li>                    
                            <li><a href="#">예약 관리</a></li>                              
                            <li><a href="../production/list.do">제품관리</a></li>
                           
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
    
    <!-- main section Start-->

    <div class="main" id="main">
        <!--test1-->
       <div class="test1" id="test1">
        <div class="eventement">
            <ul>
                <li><h1 style="color: rgb(255, 255, 255);">이벤트 관리</h1></li>
                <br>
                <li><h5 style="color: rgb(184, 148, 100);">오늘빵의 이벤트 서비스를 관리합니다.</h5></li>
                <br>
                <li>
                    <div class="reserve_icon" id="icon"><img src="../assets/images/event_icon.png " style="width: 150px;"></div>
                </li>                
            </ul>               
        </div>                
       </div>

            <h2>| 이벤트 리스트</h2>
        
        

      <div class="table-responsive" id="maintable">
        <table class="table table-hover" id="mytable">
            <thead id="thead">
                <tr>
                    <th><input type="checkbox" id="cbx_chkAll" /></th>                    
                    <th>날짜</th>
                    <th>지점</th>
                    <th>클래스명</th>
                    <th>시간</th>
                    <th>인원</th>
                    <th>삭제</th>
                    <th></th>                    
                </tr>
              </thead>
              <tbody>
               <c:forEach var="event" items="${eventList }">
				<tr>
					<td><input type="checkbox" id="chk" name="chk" value="${event.no }"></td>
					<%-- <td>${product.no }</td>	 --%>	
					<td>${event.date }</td>		
					<td>${event.location }</td>				
					<td>${event.class_name }</td>
					<td>${event.time }</td>
					<td>${event.personal }</td>									
					<td><input type="button" class="btn btn-primary btn" id="delbtn" name="delbtn" value="삭제" onclick="location.href='delete.do?no=${event.no}'"></td>
				</tr>
		   		 </c:forEach>

              </tbody>
          </table>
      </div>
       <!-- 행 추가 삭제 등록 버튼-->
       <div id="btn">
	   <button type="button" class="btn btn-primary" id="addrow_" onclick="location.href='add.do'">항목 추가</button>              
       </div>
	</div>
</body>




    <!-- jQuery -->
    <script src="../assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../assets/js/owl-carousel.js"></script>
    <script src="../assets/js/accordions.js"></script>
    <script src="../assets/js/datepicker.js"></script>
    <script src="../assets/js/scrollreveal.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/imgfix.min.js"></script> 
    <script src="../assets/js/slick.js"></script> 
    <script src="../assets/js/lightbox.js"></script> 
    <script src="../assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="../assets/js/custom.js"></script>
    <script>
     


/* [체크박스 전체 체크] ==================================================================================== */ 
 
        $(document).ready(function() {
            $("#cbx_chkAll").click(function() {
                if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
                else $("input[name=chk]").prop("checked", false);
            });
            
            $("input[name=chk]").click(function() {
                var total = $("input[name=chk]").length;
                var checked = $("input[name=chk]:checked").length;
                
                if(total != checked) $("#cbx_chkAll").prop("checked", false);
                else $("#cbx_chkAll").prop("checked", true); 
            });
        });

        
/* [수량 카운트] ========================================================================================= */         

        function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find("input[name='pop_out']");
        var tCount = Number($input.val());
        var maxNum = 4;    
        if(type=='p'){
            if(tCount < maxNum) {
                $input.val(Number(tCount)+1);                
            }
            else if(tCount >= maxNum) {
                alert("클래스 인원은 " + maxNum + " 명 을 초과 할 수 없습니다.");
            }
            else {
                $input.val(Number(tCount)-maxNum);
            }        
        }else{
            if(tCount > 0) $input.val(Number(tCount)-1);    
        }
    }
    
/* [등록/취소 alert] ================================================================================================ */

    // 등록 취소 버튼 alert Start //
    //   $('#check').click(function() {
    //       alert("등록이 완료 되었습니다.");

    // });
      $('#cancel').click(function() {
          alert("등록이 취소 되었습니다.");
    });
    // 등록 취소 버튼 alert End// 

    //모달 확인버튼 누르면 새로고침   
  $(function() {
      $('#check').click(function() {
          location.replace('02. admin_event_2.html');
      });
  }) ; 

    </script>
  </body>
</html>