<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
/* 요기로 끌고온건디여 */



	goodsBbsDto bbslist = (goodsBbsDto)request.getAttribute("detail");

	

%>



<div class="startdiv">


<div class="wrap">
	
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
						<li>₩ <%=bbslist.getG_price() %> 원</li>
						
					</ul>
				</div>
			
			</div>
		<div class="option_box">
			<div class="option">
				여기다 제품 선택 옵션 넣고
			
			</div>	
	
		</div>
		</div>
		
		<div class="goods_info">
		
			<%=bbslist.getContent() %>
		
		</div>
	
	
	</div>
	
	
	
	

</div>




</div>


<script type="text/javascript">


$(window).scroll(function(){
	
	
    if ($(window).scrollTop() >= 175) {
       $(".option").addClass("scrollfixed");
    }
    else {
       $(".option").removeClass("scrollfixed");
    }
});

</script>
