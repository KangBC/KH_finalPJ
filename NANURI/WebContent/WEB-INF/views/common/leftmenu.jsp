<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="leftmenubtn">
	<div class="barBox">
  	<div class="bar_1"></div>
  	<div class="bar_2"></div>
  	<div class="bar_3"></div>
  </div>
</div>

<div class="leftmenubox">

	<div class="left_top">
	
	<div class="menu_x" style="font-size: 13px">
		x
	</div>
		<div class="left_logo">
		<a class="logo"></a>
		</div>
		
		<div class="left_login">
			<p><span>user</span>님 환영합니다.</p>
		</div>
		
		<div style="margin: 0 auto; width: 80%; border-bottom: 1px solid #ddd"></div>
		
	</div>
	
	<div class="left_middle">
	</div>
	<!-- <div style="margin-top: 10px; margin-left: 15px;">
	<h3>Nanuri</h3>
	</div>
	<div class="menu_x" style="font-size: 13px">
		
	</div>
	<ul style="display: table;">
			<li>
				<a href="mypage.do">
				<i class=""></i>
				<p>마이페이지</p>
				</a>				
			</li>
			<li>
				<a href="basketList.do">
				<i class=""></i>
				<p>장바구니</p>
				</a>
				
			</li>
			<li>
				<a href="rentalList.do">
				<i class=""></i>
				<p>렌털서비스</p>
				</a>
			</li>
			<li>
				<a href="qnalist.do">
				<i class=""></i>
				<p>Q&A</p>
				</a>
			</li>
		</ul>
	 -->


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