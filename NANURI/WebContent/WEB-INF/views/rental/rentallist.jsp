<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%
/* 요기로 끌고온건디여 */



	List<goodsBbsDto> bbslist = (List<goodsBbsDto>)request.getAttribute("bbslist");

	

%>
 
<div class="startdiv">

<div class="page-h">
<h1>유아동</h1>
<hr>
</div>

<div class="page-b" >

	<div class="selectbox">
		<!-- 
		<span class="check_c">
		<input type="checkbox" id="ck1" name="goodsname" value="R_DATE">
		<label for="ck1">최신순</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck4" name="goodsname" value="G_PRICE" >
		<label for="ck4">낮은가격순</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck2" name="goodsname" value="SEQ">
		<label for="ck2">조회순</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck3" name="goodsname" value="STARDOT" >
		<label for="ck3">별점순</label>
		</span>
		 -->
		<span class="check_c">
		
		</span>
		
		<!-- <button onclick="ck_btn()">제발좀 ㅡㅡ</button> -->
		
	
		
	</div>

<div class="goodsbox_h">

<p class="goods_countbox">총  <span id="goods_count"><%=bbslist.size() %></span> 개 의 상품이 있습니다.</p>
	<div class="goods_select">
	
			
	
	
		<select id="goods_select" onchange="findtitle_btn()">
			<option value="R_DATE" selected="selected">최신순</option>
			<option value="G_PRICE">낮은가격순</option>
			<option value="READCOUNT">조회순</option>
		</select>
		
		<input type="text" id="findtitle" onkeyup="findtitle_btn()" placeholder="제목을 검색해주세요">
			<!-- <button id="findtitle_btn" onclick="findtitle_btn()">검색</button> -->
		
	</div>
</div>
<hr style="height: 1px;background: #333;margin: 0;">

	<div class="goodsbox" id="goodsbox">
	
	<%-- 	
		<%
			for(int i=0; i < 5; i++){
		%>
		<a href="goodsdetail.do?seq=<%=bbslist.get(i).getSeq() %>&g_code=<%=bbslist.get(i).getG_code() %>" class="goods goods<%=bbslist.get(i).getSeq() %>" >
			<div class="goods_img"></div>
			<p class="goods_title"><%=bbslist.get(i).getTitle() %></p>
			<p class="goods_content"><%=bbslist.get(i).getContent() %></p>
			<p class="goods_price">₩ <%=bbslist.get(i).getG_price() %></p>
		</a>
	<% 
			}
	%>
	
	 --%>
	</div>


	<div>
		<button onclick="indexup()" id="pageingbtn" style="display: none;">눌러눌러</button>
	</div>


</div>







</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">

/* 더보기 박스 */
$(document).ready(function() {
	var node = $('.goodsbox').children();	 		
	var length = $("#goods_count").html();

	if(length != node.length){
		$("#pageingbtn").show();
	}
});
	
	
	/* 리스트 가져오기 */
	var startindex = 0;
	var endindex = 5;
 
	var list = {
			"startindex" : startindex,
			"endindex" : endindex,
			};
	
$.ajax({
	url : "findlist.do",
	type : "POST",
	data : list,
	async: true,
	success : function(data) {
			
		
		 $('.goodsbox').children('.goods').remove();
		
 			 			
			
	 	 $.each(data.list, function(key, value){ 
	 		 
	 		if(value.title != null){
	 			
	 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"></div><p class="goods_title">'+value.title+'</p><p class="goods_content">'+value.content+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');

	 			
	 		}
	 		

	 		
			 });
		  
	
		
	},
	error : function(xhr, status) {
		alert("ㅋㅋ넌못해");
	}
})

	


/* 더보기버튼 페이징 */
function indexup(){
	
		startindex = endindex;
		endindex = endindex + 4; 
		
		var list = {
				"startindex" : startindex,
				"endindex" : endindex,
				};
		
	$.ajax({
		url : "findlist.do",
		type : "POST",
		data : list,
		async: true,
		success : function(data) {

		 	 $.each(data.list, function(key, value){ 
		 		 
		 		if(value.title != null){

		 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"></div><p class="goods_title">'+value.title+'</p><p class="goods_content">'+value.content+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
		 			
		 			/* 더보기 박스 hide */
		 			var node = $('.goodsbox').children();	 		
		 			var length = $("#goods_count").html();

		 			if(length == node.length){
		 				$("#pageingbtn").hide();
		 			}
		 			
		 		}
		 		
				 });
			  
		
			
		},
		error : function(xhr, status) {
			alert("ㅋㅋ넌못해");
		}
	})
		
		
	}
</script>



<script type="text/javascript">

		/* title + select box 검색 */
function findtitle_btn(){
	
	var title = $("#findtitle").val();	
	var lists = $("#goods_select").val();
	
	//alert(lists);
	
	var list = {
			"title" : title,
			"lists" : lists,
			};
	
	
$.ajax({
	url : "findtitle.do",
	type : "POST",
	data : list,
	async: true,
	success : function(data) {
		
		/* 검색 결과 없을시 */
		if(data.list.length == 0){
 			$("#pageingbtn").hide();
 		}
		
		/* 검색 결과 있을시 */
		if(title != ""){
			
		 $('.goodsbox').children('.goods').remove();
		 	var node = $('.goodsbox').children();
 			$("#goods_count").html(node.length); 
 			
 			//alert(data.list.length);
 			
		 	console.log(data.list.title);
			
			
	 	 $.each(data.list, function(key, value){ 
	 		
	 		if(value.title != null){
	 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"></div><p class="goods_title">'+value.title+'</p><p class="goods_content">'+value.content+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
	 			 var node = $('.goodsbox').children();
	 			$("#goods_count").html(node.length); 
	 			$("#pageingbtn").hide();
	 		}
	 		
	 		
			 });
		}
		
		
		// 공백일때 페이지 새로고침
		else{
			location.reload();
		}
		
	},
	error : function(xhr, status) {
		alert("ㅋㅋ넌못해");
	}
})



}






	
</script>


<script type="text/javascript">
var page = 1;
/* 
$(window).scroll(function() {
    if ($(window).scrollTop() == $(document).height() - $(window).height()) {
      console.log(++page);
      $("#goodsbox").append("<h1>Page " + page + "</h1><BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~");
      
    }
}); */
</script>

