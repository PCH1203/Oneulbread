<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="ko">

<!-- [헤더영역] ===================================================================================================================  -->

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
     
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

     <script src="../assets/js/bootstrap.bundle.min.js"></script>
     <script src="../assets/js/jquery-3.6.0.min.js"></script>
     
<!-- [스타일 영역] ===================================================================================================================  -->
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
         #personal {
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
         #addrow, #delrow, #submit, #reset {
            background-color: rgba(255,219,96, 1);
            border-style: none;
        }
        footer {
            background-color: rgba(50, 50, 50, 1);
        }
        .header-area .main-nav .nav li a  {
            color: white;
        }
       
     </style>

   </head>

<!-- 바디 영역 #######################################################################################################  -->    
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

            <h2>| 이벤트 추가</h2>
        
        

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
                    <th></th>                    
                </tr>
              </thead>
              <form action="add.do" method="post"> 
              <tbody>
                  <tr>
                      <td><input type="checkbox" name="chk"></td>
                      <!-- 날짜  -->
                       <td>
                      	<input type="text" name="date" id="date" size="10" placeholder="날짜선택" readonly>
                      </td>           
                      <!-- 지점 선택 창-->
                      <td>
                        <select id="location" name="location">
                            <option value="">지점 선택</option>
                            <option>강남점</option>
                            <option>송파점</option>
                            <option>성수점</option>
                            <option>성남점</option> 
                            <option>제주공항점</option>              
                        </select>    
                      </td>

                      <!-- 클래스 선택 창-->
                      <td>
                        <select id="class_name" name="class_name">
                            <option value="">클래스 선택</option>
                            <option>스콘 클래스</option>
                            <option>크로플 클래스</option>
                            <option>케이크 클래스</option> 
                            <option>에그타르트 클래스</option> 
                            <option>애플 파이 클래스</option> 
                            <option>마카롱 클래스</option>      
                        </select>    
                      </td> 
                          
                      <!-- 클래스 시간 선택 창-->
                      <td>
                        <select id="time" name="time">
                            <option value="">시간 선택</option>
                            <option>9:00 ~ 11:00</option>
                            <option>11:00 ~ 13:00</option>
                            <option>14:00 ~ 16:00</option> 
                            <option>16:00 ~ 18:00</option> 
                            <option>18:00 ~ 20:00</option>                                          
                        </select>    
                      </td>        
                      
                    <!--인원 버튼 Start-->                    
                    <td>
                      <input type="text" name="personal" id="personal" value="0" readonly="readonly" style="text-align:left;"/>
                      <button type ="button" class="btn btn-primary btn-sm" onclick="fnCalCount('p',this);">+</button>
                      <button type="button" class="btn btn-primary btn-sm" onclick="fnCalCount('m', this);">-</button>
                   </td>   
                     <!--인원 버튼 End-->                     
                  </tr>
                 
              </tbody>
             
          </table>
      </div>
       <!-- 행 추가 삭제 등록 버튼-->
       <div id="btn"><!--  -->
        <!--등록 모달 `버튼-->
        <button type="button" class="btn btn-primary"data-bs-toggle="modal" data-bs-target="#intro" id="submit">등록</button>   
        <button type="button" class="btn btn-primary"data-bs-toggle="modal" data-bs-target="#outro" id="reset">초기화</button>  
           
        <div class="modal fade" id="intro" role="dialog" aria-labelledby="introHeader" aria-hidden="true" tabindex="-1">           
            <div class="modal-dialog modal-dialog-centered">               
                <div class="modal-content">                  
                    <div class="modal-header">
                        <h5 class="modal-title" style="color: black;">알림</h5>
                    </div>                    
                    <div class="modal-body"  style="text-align: center; margin: 100px auto;">
                        <img src="../assets/images/lilght.png" style="width: 100px; margin-bottom: 30px;">
                        <h3 style="color: black;">선택 항목을 등록하시겠습니까?</h3>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" data-bs-dismiss="modal" id="check">확인</button>
                        <button type="button" class="btn btn-dark" data-bs-dismiss="modal"  id="cancel">취소</button>
                    </div>                    
                </div>
            </div>
        </div>  
         
          <div class="modal fade" id="outro" role="dialog" aria-labelledby="introHeader" aria-hidden="true" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">      
                    <div class="modal-header">
                        <h5 class="modal-title" style="color: black;">알림</h5>
                    </div>
                    <div class="modal-body"  style="text-align: center; margin: 100px auto;">
                        <img src="../assets/images/lilght.png" style="width: 100px; margin-bottom: 30px;">
                        <h3 style="color: black;">항목을 초기화 하시겠습니까?</h3>
                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-primary" data-bs-dismiss="modal" id="check">확인</button>
                        <button type="button" class="btn btn-dark" data-bs-dismiss="modal"  id="cancel">취소</button>
                    </div>
                    
                </div>
            </div>
        </div> 
            
    </div>
  </form>


</div>        
  
  
     
</body>

<!--[FOOTER] ===========================================================================================================	-->
 <footer>
 
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-xs-12">
                <div class="right-text-content">
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="logo">
                    <a href="../index.jsp"><img src="../assets/images/titlemain.png" style="height: 120px;"></a>
                </div>
            </div>
            <div class="col-lg-4 col-xs-12">
                <div class="left-text-content">
                    <p>늘 갓만들어진 빵 신선한 빵을 제공하겠습니다. <br>5늘빵이 약속합니다.</p>
                </div>
            </div>    
            <button class="btn" data-bs-toggle="modal" data-bs-target="#" >이용약관</button>
            <button class="btn" data-bs-toggle="modal" data-bs-target="#" >개인정보처리방침</button>          
            <a href="#" style="text-decoration: none; color: black;">FAQ</a>
       </div>                        
	</div>

    
</footer>
    <!-- jQuery -->
    <script src="../assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../assets/js/owl-carousel.js"></script>
    <script src="../assets/js/accordions.js"></script>
    <script src="../assets/js/datepicker-ko.js"></script>
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
     
/* [체크박스 전체 체크] =============================================================================================================== */  

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

        
/* [수량 카운트] ========================================================================================================================= */ 

        function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find("input[name='personal']");
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
 
/* [행 추가/삭제] =========================================================================================================================  */

      $(function() {
        $('#addrow').click(function() {                
    $('#mytable > tbody:last').append(        
        '<tr>'+
                      '<td><input type="checkbox" name="chk"></td>'+                     
                      '<td>'+
                        '<select id="rel_branch">'+
                            '<option value="">지점 선택</option>'+
                            '<option>강남점</option>'+
                            '<option>송파점</option>'+
                            '<option>성수점</option>'+
                            '<option>성남점</option>'+ 
                            '<option>제주공항점</option>'+              
                        '</select>'+    
                      '</td>'+                    
                      '<td>'+
                        '<select id="rel_product">'+
                            '<option value="">클래스 선택</option>'+
                            '<option>스콘 클래스</option>'+
                            '<option>크로플 클래스</option>'+
                            '<option>케이크 클래스</option>'+
                            '<option>에그타르트 클래스</option>'+
                            '<option>애플 파이 클래스</option>'+
                            '<option>마카롱 클래스</option>'+     
                        '</select>'+   
                      '</td>'+                    
                      '<td>'+
                        '<select id="rel_time">'+
                            '<option value="">시간 선택</option>'+
                            '<option>09:00 ~ 11:00</option>'+
                            '<option>11:00 ~ 13:00</option>'+
                            '<option>14:00 ~ 16:00</option>'+
                            '<option>16:00 ~ 18:00</option>'+
                            '<option>18:00 ~ 20:00</option>'+                                          
                        '</select>'+    
                      '</td>'+
                      '<td>'+
                      '<input type="text" name="pop_out" id="pop_out" value="0" readonly="readonly" style="text-align:left;"/>&nbsp'+
                      '<button type ="button" class="btn btn-primary btn-sm" onclick="fnCalCount(\'p\',this);">+</button>&nbsp'+
                      '<button type="button" class="btn btn-primary btn-sm" onclick="fnCalCount(\'m\', this);">-</button>'+ 
                   '</td>'+           
                  '</tr>'                        
    );   
  });
  $('#delrow').click(function() {
    $('#mytable > tbody > tr:last').remove();
    productNum--;
  });
      });      

/* [등록/취소 alert] ========================================================================================================== */
    // 등록 취소 버튼 alert Start //
    
    //   $('#check').click(function() {
    //       alert("등록이 완료 되었습니다.");

    // });
      $('#cancel').click(function() {
          alert("등록이 취소 되었습니다.");
    });
    
/* [달력] =================================================================================================================== */

    $(function(){
	$("#date").datepicker({
		showOn: "button",
        buttonImage: "../assets/images/calendar.gif",
	    buttonImageOnly: false,
		buttonText: "Select date"
	});
});

    </script>
  </body>
</html>