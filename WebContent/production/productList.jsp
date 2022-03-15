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
    <title>5늘빵 | 관리자 페이지 | 제품 관리</title>
     <!-- Additional CSS Files -->    
     <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
     <link rel="stylesheet" href="../assets/css/admin_templatemo-klassy-cafe.css">
     <link rel="stylesheet" href="../assets/css/owl-carousel.css">
     
     <script src="../assets/js/bootstrap.bundle.min.js"></script>
     <script src="../assets/js/jquery-3.6.0.min.js"></script>
     
<!-- [스타일 영역]  =================================================================================+++++++++============== -->
     <style>
          .header-area.header-sticky {
            background-color: rgba(50, 50, 50, 0.7);
        }
        #test3 {
           margin-top: 0px;           
           width: 100%;
           height: 500px;
           background-color: rgba(13,70,51, 1);
       }
       .productment {
            padding-top: 130px;
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
         #quantity {
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
            background-image: url("../assets/images/banner.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            text-align: center;
            padding-top: 30px;
            height: 400px;
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
        .searchbar input {
            width: 100%;
            font-size: 18px;
            font-weight: 300;
            line-height: 26px;
            letter-spacing: -0.04em;
            padding: 0px 10px 8px;
            border-bottom: 1px solid rgb(203, 203, 203);
            color: rgb(28, 28, 28);
        }
        .search {
            height: 100%;
            box-sizing: border-box;
            border: none;
        }
        .faqlist {
            margin-top: 40px;
        }
        .modal-content {
            background: rgba(240, 211, 142, 0.7);
        }
        #addrow, #delrow, #submit {
            background-color: rgba(52,42,60, 1);
            border-style: none;
        }
        footer {
            background-color: rgba(50, 50, 50, 1);
        }
        .header-area .main-nav .nav li a  {
            color: white;
        }
        #delbtn {
        background-color:rgba(52,42,60, 1) ;
        border-style: none;
        }
     
     </style>

    </head>
    
<!-- body 영역 =================================================================================+++++++++============== -->   
 
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
                            <h4 style="display: inline-block;">오늘 빵 | 제품 관리</h4>                            
                        </a>
                        <!-- ***** Logo End ***** -->
                        
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="../index/admin_index.jsp" class="active">Admin Main</a></li>
                            <li><a href="../event/list.do">이벤트 관리</a></li>                    
                            <li><a href="#">예약 관리</a></li>                              
                            <li><a href="list.do">제품관리</a></li>                           
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
        <!--test3-->
        <div class="test3" id="test3">
            <div class="productment">
                <ul>
                    <li><h1 style="color: white;">제품관리</h1></li>
                    <br>
                    <li><h5 style="color: rgb(169, 209, 142);">오늘빵의 제품을 관리힙니다.</h5></li>
                    <br>
                    <li>
                        <div class="reserve_icon" id="icon"><img src="../assets/images/product_icon.png " style="width: 150px;"></div>
                    </li>                      
                </ul>        
            </div>                
        </div> 
        <h2>| 제품 목록</h2>

        <div class="table-responsive" id="maintable">
          <table class="table table-hover" id="mytable">
              <thead id="thead">
              
                  <tr>
                	  <th><input type="checkbox" id="cbx_chkAll" /></th>             
                      <th>카테고리</th>
                      <th>요약 이미지</th>
                      <th>세부 이미지</th>
                      <th>제품명</th>
                      <th>제품 가격</th>
                      <th>요약 정보</th>
                      <th>수량</th>                    
                      <th>삭제</th>                    
                  </tr>
              </thead>
                
              <tbody>               
                 <c:forEach var="product" items="${productList }">
					<tr>
						<td><input type="checkbox" id="chk" name="chk" value="${product.no }"></td>
						<%-- <td>${product.no }</td>	 --%>			
						<td>${product.category }</td>				
						<td>${product.detail_path }</td>				
						<td>${product.path }</td>				
						<td>${product.product_name }</td>
						<td>${product.price }</td>
						<td>${product.summary}</td>
						<td>${product.quantity }</td>						
						<%-- <td><a href="delete.do?no=${product.no }">삭제</a></td> --%>
						<td><input type="button" class="btn btn-primary btn" id="delbtn" name="delbtn" value="삭제" onclick="location.href='delete.do?no=${product.no}'"></td>					
					</tr>
		   		 </c:forEach>
			</tbody>   
				           
            </table>
        </div>  
  
        <!-- 행 추가 삭제 등록 버튼-->
                  <div id="btn">          
                      <button type="button" class="btn btn-primary" id="addrow_" onclick="location.href='add.do'">항목 추가</button>              
                     <%--  <button type="button" class="btn btn-primary" id="delrow_" value="${product.no }" onclick="location.href='delete.do'">항목 삭제</button> --%>              

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
                  </div>
    </div>       


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

/* [등록/취소 alert] ================================================================================================ */


    //   $('#check').click(function() {
    //       alert("등록이 완료 되었습니다.");
    // });
    
      $('#cancel').click(function() {
          alert("등록이 취소 되었습니다.");
    });
ㄴ
    </script>
  </body>
</html>