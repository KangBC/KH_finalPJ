<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="leftmenubtn">
	
</div>

<div class="leftmenubox">
	<div style="margin-top: 10px; margin-left: 15px;">
	<h3>Nanuri</h3>
	</div>
	<div class="menu_x" style="font-size: 13px">
		
	</div>
	<ul style="display: table;">
			<li>
				<a href="mypage.do">
				<i class="">
				<p>마이페이지</p>
				</a>				
			</li>
			<li>
				<a href="basketList.do">
				<i class="">
				<p>장바구니</p>
				</a>
				
			</li>
			<li>
				<a href="rentalList.do">
				<i class="">
				<p>렌털서비스</p>
				</a>
			</li>
			<li>
				<a href="qnalist.do">
				<i class="">
				<p>Q&A</p>
				</a>
			</li>
		</ul>
	


</div>

<script type="text/javascript">

	$(".leftmenubtn").click(function(){
		$(this).fadeOut();
		$(".leftmenubox").fadeIn();
	});
	
	$(".menu_x").click(function(){
		$(".leftmenubox").fadeOut();
		$(".leftmenubtn").fadeIn();
	});

</script>