<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="leftmenubtn">
	
</div>

<div class="leftmenubox">



	<div class="menu_x">
		x
	</div>

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