<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인 페이지</title>
<html lang="ko">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>5늘빵 | 관리자 페이지</title>
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
    <link rel="stylesheet" href="../assets/css/admin_templatemo-klassy-cafe.css">
    <link rel="stylesheet" href="../assets/css/owl-carousel.css">
    
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/jquery-3.6.0.min.js"></script>

    <style>
        
        
        .header-area.header-sticky {
            background-color: rgba(50, 50, 50, 0.7);
        }
        #test1 {
           
            margin-top: 0px;
            
            width: 100%;
            height: 740px;
            background-color: rgba(150,75,0, 1);
        }
        #test2 {
            display: block;
            margin-top: 15px;
            width: 100%;
            height: 740px;
            background-color: rgba(52,42,60, 1);
        }
        #test3 {
           
           margin-top: 15px;           
           width: 100%;
           height: 740px;
           background-color: rgba(13,70,51, 1);
       }
        .eventement {
            padding-top: 140px;
            text-align: center;
            color: white;
        }      
        .reservement {
            padding-top: 100px;
            text-align: center;
            color: white;
        }      
        .productment {
            padding-top: 100px;
            text-align: center;
            color: white;
        }      
        #icon {
            margin-top: 50px;
        }
        #more1 {
            margin-top: 100px;
            background-color:rgba(184, 148, 100, 1) ;
            border-style: none;
        }
        #more2 {
            margin-top: 100px;
            background-color:rgba(13, 70, 51, 1) ;
            border-style: none;
        }
        #more3 {
            margin-top: 100px;
            background-color:rgba(52,42,60, 1) ;
            border-style: none;
        }
        
       
        
        #chefs {
            padding-top: 60px;
            padding-bottom: 60px;
        }
        #menu {
            text-align: left; 
            padding-top: 100px;
            height: 30px;
            background-color: white;
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
             border-style: none;            
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
            height: 2200px;
                           
        }
        .mainhead {
            background-image: url("../assets/images/banner.jpg");          
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            text-align: center;
            padding-top: 30px;
            height: 400px;
            background: rgb(247, 240, 218);
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
       
        #header_img {
            margin-top: 130px;
            width: 150px;            
        }
        footer {
            background-color: rgba(50, 50, 50, 1);
        }      
        .header-area .main-nav .nav li a  {
            color: white;
        }
    </style>


<!--    <link rel="stylesheet" href="../assets/css/lightbox.css">-->
   
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="../index.jsp" class="logo">
                            <img src="../assets/images/titlemain.png" align="klassy cafe html template" style="height: 80px; display: inline-block">
                            <h4 style="display: inline-block; color: white;">오늘 빵</h4>
                            
                        </a>
                        <!-- ***** Logo End ***** -->
                        
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="#top" class="active">admin main</a></li>
                            <li><a href="../event/list.do" style="color: white;">이벤트 관리</a></li>                    
                            <li><a href="#" data-bs-toggle="modal" data-bs-target="#intro">예약 관리</a></li>                              
                            <li><a href="../production/list.do" >제품관리</a></li>
                           
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
                <li> 
                    <a href="../event/list.do">
                    <button class="btn btn-primary btn-lg" id="more1">more</button>                
                    </a>
                </li>     
            </ul>               
        </div>                
       </div>
        <!--test2-->
        <div class="test2" id="test2">
            <div class="reservement">
                <ul>
                    <li><h1 style="color: white;">예약관리</h1></li>
                    <br>
                    <li><h5 style="color: rgb(255, 198, 240);">픽업 예약 서비스를 관리합니다.</h5></li>
                    <br>
                    <li>
                        <div class="reserve_icon" id="icon"><img src="../assets/images/reserve_icon.png " style="width: 150px;"></div>
                    </li>
                    <li> 
                        <a href="#">
                        <!-- <button class="btn btn-primary btn-lg" id="more2">more</button> -->                
        <button type="button" class="btn btn-primary btn-lg"data-bs-toggle="modal" data-bs-target="#intro" id="more2">more</button>        
        <div class="modal fade" id="intro" role="dialog" aria-labelledby="introHeader" aria-hidden="true" tabindex="-1">

            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                
                    <div class="modal-header">
                        <h5 class="modal-title" style="color: black;">알림</h5>
                    </div>

                    <div class="modal-body"  style="text-align: center; margin: 100px auto;">
                        <img src="../assets/images/lilght.png" style="width: 100px; margin-bottom: 30px;">
                        <h3 style="color: black;">준비중입니다 조금만 기다려 주세요<br><br>(●'◡'●)  </h3>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-primary" data-bs-dismiss="modal" id="check">확인</button>                        
                    </div>
                    
                </div>
            </div>
        </div>      
                        </a>                   
                       </li>     
                </ul>               
            </div>                
        </div>
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
                    <li> 
                        <a href="../production/list.do">
                        <button class="btn btn-primary btn-lg" id="more3">more</button>                
                        </a>
                    </li>     
                </ul>        
            </div>                
        </div> 
    </div>
  
    <!-- ***** Chefs Area Ends ***** -->

    

    <!-- ***** Footer Start ***** -->
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
        
                <button class="btn" data-bs-toggle="modal" data-bs-target="#TermOfUse" >이용약관</button>
                <button class="btn" data-bs-toggle="modal" data-bs-target="#Privacy" >개인정보처리방침</button>
                <a href="service.html" style="text-decoration: none; color: black;">FAQ</a>
                
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
        
   
    </script>
  </body>
</html>