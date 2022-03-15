<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<title>5늘빵</title>
<jsp:include page="../Header.jsp"/>

  <head>

    <style>
        .box {
          width: 80px;
          height: 100px;
        }
        #check {
            color: white;
            background-color: teal;
        }
        #select {
            color: white;
            background-color: red;
        }
        #pop_out {
            width: 30px;
        }
        .ssss{
            transform: translate(680px,-70px);
            z-index: 5;
        }

    </style>


    <style>
        .bod {
            border-style: none;
        }
        #chefs {
            background-color: rgb(247, 240, 218);
        }
    </style>

    </head>
    
    <body>
    
   
    <div>
        <p class ="box"></p>
    </div>

    <section class="section" id="chefs">
        <div class="container">
                    <div class="chef-item"  style="border-style: none;">
                        <div id="btn"></div>
                        <table>
                            <img src="../assets/images/175320.jpg" alt="Chef #1">
                            
                                
                                    <td class="ssss">
                                <button class="btn btn.btn-primary" id="check">예약하기</button>
                                <button class="btn btn.btn-primary" id="select">수량 : </button>
                                
                                
                                    <input type="text" name="pop_out" id="pop_out" value="0" readonly="readonly" style="text-align:left;"/>
                                    <button type ="button" class="btn btn-primary btn-sm" onclick="fnCalCount('p',this);">+</button>
                                    <button type="button" class="btn btn-primary btn-sm" onclick="fnCalCount('m', this);">-</button>
                                 </td>   
                                </table>
                            </div>
                    </div>
        
    </section>

    <jsp:include page="../Tail.jsp" />
    <script>
    
     
        // 수량 카운트 스크립트 // 
        function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find("input[name='pop_out']");
        var tCount = Number($input.val());

        if(type=='p'){
            if(tCount < 30 ) {
                $input.val(Number(tCount)+1);
            }else {
                $input.val(Number(tCount)-30);
            }        
        }else{
            if(tCount > 0) $input.val(Number(tCount)-1);    
        }
    }
       // 수량 카운트 스크립트 끝 //
        // 등록 취소 버튼 alert Start //
      $('#check').click(function() {
          alert("예약이 완료 되었습니다.");
    });
      $('#select').click(function() {
          alert("재고의 여유가 있습니다.");
    });
    // 등록 취소 버튼 alert End//
    </script>
  </body>
</html>