<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@page import="com.kh.finalPJ.review.reviewDto"%>
<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
/* 요기로 끌고온건디여 */



	goodsBbsDto bbslist = (goodsBbsDto)request.getAttribute("detail");
	List<reviewDto> list = (List<reviewDto>)request.getAttribute("reviewDto");
	
	
	memberDto id = (memberDto)request.getSession().getAttribute("login");
	
	 if(id == null){
		id = new memberDto();
		id.setId("null");
	} 
	
%>



<div class="startdiv">


<div class="detail_wrap">
	
	<div class="detail_head">
	
		<p class="category">
		[ 가전제품 ]
		</p>
		
		<p class="goods_title">
		<%=bbslist.getTitle() %>
		</p>
		
	</div>
	
	<div class="detail_body">
		
		<div class="top_box">
			<div class="goods_img">
			
			</div>
		
			<div class="goods_priceinfo">
				<div class="price_box">
					<ul>
						<li>렌탈</li>
						<li>₩ <%=bbslist.getG_price() %> / 월</li>
						<li>예상배송일</li>
						<li>업체 배송(평균 2영업일 소요)</li>
						<li>배송비</li>
						<li>₩ 4500</li>
					</ul>
				</div>
			
			</div>
		
		</div>
		
		<div class="goods_info">

			<img alt="" src="resources/img/rental_content/<%=bbslist.getContent()%>" width="100%">
			 
			
		
		</div>
	
	
	
	
	<div class="detail_footer">
		
		<div class="tab_box">
		
		<ul class="tab_title">
			<li id="tab01" class="active">기본정보</li>
			<li id="tab02">상품후기 (<%= list.size()%>)</li>
			<li id="tab03">Q & A</li>
		</ul>
		
		<ul class="tab_contant">
			<li id="tab01">기본정보</li>
			
			
		
			<!-- review -->
			<li id="tab02">
				
				

<ul class="review">
<%
	if(list.size() != 0 ){
	
	for(int i = 0; i < list.size(); i++){
%>
   <li>
  	<!--상품사진넣기  ////////////-->
       <div class="img">
          <!-- <img alt="" src=""> -->
       </div>
    <!--/////////////////  -->
    
       <div class="text_view" onclick="location.href='reviewdetail.do?seq=<%=list.get(i).getSeq()%>'" style="cursor: pointer;width: 520px;">
       	<div>
             <a href="reviewdetail.do?seq=<%=list.get(i).getSeq()%>" class="title"><%=list.get(i).getTitle() %></a>
             	
             	<!-- 별점 -->
             	<div class="star">별점수: <%=list.get(i).getRating() %></div>
<!-- =======별이다======= -->
<tr>
	<td class="starRev">
 		 <span class="starR1">1</span>
 		 <span class="starR2">2</span>
 		 <span class="starR1">3</span>
 		 <span class="starR2">4</span>
 		 <span class="starR1">5</span>
 		 <span class="starR2">6</span>
 		 <span class="starR1">7</span>
		 <span class="starR2">8</span>
 		 <span class="starR1">9</span>
 		 <span class="starR2">10</span>
	</td>
<tr>
<input type="hidden" name="rating" id="rating" value="0">
      			
      			</div>
      			<!-- 별점 끝 -->
    	</div>
       <div class="idbox" style="padding-top: 10px;">
          <p class="id" style="margin-bottom: 5px;"><%=list.get(i).getId() %></p>
          <p class="wdate"><%=list.get(i).getWdate().substring(0,16) %></p>
       </div>
   </li>
<%
		}
	}
	else{
		%>
		
		<div class="review_null">
		
			<p>등록된 리뷰가 없습니다.</p>
			
		</div>
		
		
		<% 
	}
%>
</ul>


			</li>
			 
			
			
			
			
			<li id="tab03">Q & A</li>
			</ul>
		</div>
		
	
	</div>
	
	
	</div>
	
	<div class="option_box">
			<div class="option">
				<div class="top">
					주문하기
				</div>
				<div class="middle">
				
					<div>
					<p>갯수</p>
					<button class="monthbtn minusbtn" title="수량줄이기">-</button>
					<input class="number_box" type="number" value="1" disabled="disabled" >
					<button class="monthbtn plusbtn" title="수량늘이기">+</button>
					</div>
					
					<div>
					<p>기간</p>
					<button class="monthbtn minusbtn" title="수량줄이기">-</button>
					<input class="month_box" type="number" value="1" disabled="disabled" >
					<button class="monthbtn plusbtn" title="수량늘이기">+</button>
					</div>
					
				</div>
				<div class="bottom">
					<div class="priceview">
						<input id="pricehidden" type="hidden" value="<%=bbslist.getG_price() %>" disabled="disabled" >
						<input class="price" type="number" value="<%=bbslist.getG_price() %>" disabled="disabled" >
						
						<!-- insert date -->
					 	<input type="hidden" id="loginid" value="<%=id.getId() %>">
						<input type="hidden" id="g_code" value="<%=bbslist.getG_code() %>">
						
						<input type="number" id="monthnum" value="1">
					
						<input id="resultnum" value="<%=bbslist.getG_price() %>" disabled="disabled">
					</div>
					<div class="btnbox">
						<a class="pricebtn" id="basketbtn">장바구니</a>
						<a class="pricebtn">구매하기</a>
					</div>	
				</div>
			</div>	
	
		</div>
	
	

</div>




</div>


<div class="topbtn" style="width: 10px; height: 10px; background-color: blue; position: fixed; bottom: 30; right: 30; cursor: pointer;	">
	TOP
</div>



<!-- Modal -->
<div class="modal fade" id="basketModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-body">
        	성공적으로 장바구니에 담겼습니다
      </div>
      <div class="modal-footer" style="text-align: center;">
        <a type="button" class="btn btn-default" data-dismiss="modal">쇼핑계속하기</a>
        <a type="button" class="btn btn-primary" href="basketList.do">장바구니이동</a>
      </div>
    </div>
  </div>
</div>




<script type="text/javascript">


//topbtn
$(".topbtn").click(function(){
	 $('html, body').animate({
         scrollTop : 0
     }, 400);
});	

// 옵션박스
$(window).scroll(function(){
	
	var scrollPosition = ($(".option_box").offset().top - 50);
    if ($(window).scrollTop() >= scrollPosition) {
       $(".option").addClass("scrollfixed");
    }
    else {
       $(".option").removeClass("scrollfixed");
    }
});


// 하단 탭메뉴
$(".tab_title li").click(function(){
	$(".tab_title li").removeClass('active');
	$(this).addClass('active');
	
	var scrollPosition = $(".tab_title").offset().top;
	$( 'body' ).animate( { scrollTop: scrollPosition	}, 500);
	
	
	$(".tab_contant > li").hide();
	var data_show = $(this).attr('id');
	$(".tab_contant #"+data_show).show();
	
	
});

// 플러스 버튼
$(".plusbtn").click(function(){
	var number = parseInt($(this).prev().attr('value'));
	var numberplus = number + 1;
	$(this).prev().attr('value',numberplus);
	
	var price = parseInt($("#pricehidden").attr('value'));
	var amount = parseInt($(".number_box").attr('value'));
	
	var result = price * amount;
	$(".price").attr('value',result);
	
	var month_box = parseInt($(".month_box").attr('value'));
	$("#monthnum").attr('value',month_box);
	
	$("#resultnum").attr('value',month_box * result);
	
});

// 마이너스버튼
$(".minusbtn").click(function(){
	
	var number = parseInt($(this).next().attr('value'));
	
	if(number != 1){
	
	var numberplus = number - 1;
	$(this).next().attr('value',numberplus);

	var price = parseInt($("#pricehidden").attr('value'));
	var amount = parseInt($(".number_box").attr('value'));
	
	var result = price * amount;
	$(".price").attr('value',result);
	
	var month_box = parseInt($(".month_box").attr('value'));
	$("#monthnum").attr('value',month_box);
	
	$("#resultnum").attr('value',month_box * result);
	}
	
	
	
});

// 장바구니 insert
$("#basketbtn").click(function(){
	
	// 갯수
	var amount = $(".number_box").attr('value');
	// 개월
	var month = $(".month_box").attr('value');
	// 총합가격
	var resultnum = $(".resultnum").attr('value');
	 // 로그인 id
	var id = $("#loginid").attr('value'); 
	// g_code
	var gcode = $("#g_code").attr('value');
	
	
	if(id == "null"){
		alert("로그인을 해주세요");
	}else{
		
		var list = {
				"id" : id,
				"gcode" : gcode,
				"month" : month,
				"amount" : amount
				};
		
	$.ajax({
		url : "basketinsert.do",
		type : "POST",
		data : list,
		async: true,
		success : function(data) {
			
			
			
			if(data){
				
				$("#basketModal").modal();
				
			}else{
				alert("다시시도해주세요");
			}
		},
		error : function(xhr, status) {
			alert("ㅋㅋ넌못해");
		}
	})

		
		
		
	//location.href = "basketinsert.do?id="+id+"&g_code="+gcode+"&month="+month+"&amount="+amount;
	}
	
	
});



</script>
