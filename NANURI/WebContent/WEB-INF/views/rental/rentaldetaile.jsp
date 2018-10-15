<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
/* 요기로 끌고온건디여 */



	int seq = (int)request.getAttribute("seq");

	

%>



<div class="startdiv">


<div class="wrap">
	
	<div class="detail_head">
	
		<p class="category">
		[ 가전제품 ]
		</p>
		
		<p class="goods_title">
		요요 플러스 6+ A형(기본형)_블랙프레임
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
						<li>₩ 39,000원</li>
						<li>₩ 39,000원</li>
						<li>보증금 : ₩ 39,000원</li>
					</ul>
				</div>
			
			</div>
		<div class="option_box">
			<div class="option">
				제품옵션선택은 여기서 넣기로하고
			
			</div>	
	
		</div>
		</div>
		
		<div class="goods_info">
		
			제품설명
		
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
