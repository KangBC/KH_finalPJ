<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%
/* 요기로 끌고온건디여 */


 
	List<goodsBbsDto> bbslist = (List<goodsBbsDto>)request.getAttribute("bbslist");

	 
	 String title = (String)request.getAttribute("title");
	 

%>
 
<div class="startdiv">

<div class="page-h">

<h1><%=title %></h1>
<!-- 카테고리 분류 값 -->
<input type="hidden" value="<%=title %>" id="category_val">
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
	
	 	
		<%-- <%
			for(int i=0; i < bbslist.size(); i++){
		%>
		<a href="goodsdetail.do?seq=<%=bbslist.get(i).getSeq() %>&g_code=<%=bbslist.get(i).getG_code() %>" class="goods goods<%=bbslist.get(i).getSeq() %>" >
			<div class="goods_img">
				<img alt="" src="resources/img/rental_content/<%=bbslist.get(i).getContent()%>" width="100%">
			</div>
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
	
	var startindex = 1;
	var endindex = 4;
	var category;
	
	if($("#category_val").val() == "유아동"){
		category = "AC";
	}
	else if($("#category_val").val() == "레저"){
		category = "BC";
	}else if($("#category_val").val() == "패션"){
		category = "CC";
	}else if($("#category_val").val() == "리빙"){
		category = "DC";
	}
 	
	var list = {
			"startindex" : startindex,
			"endindex" : endindex,
			"category" : category
			};
	
$.ajax({
	url : "findlist.do",
	type : "POST",
	data : list,
	async: true,
	success : function(data) {
			
		console.log(data.list);
		
		 $('.goodsbox').children('.goods').remove();
		
 			 			
			
	 	 $.each(data.list, function(key, value){ 
	 		 
	 		if(value.title != null){
	 			
	 		// img 가 없을때
				if(!value.g_img){
	 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"><img alt="" src="resources/img/download.png" width="100%"></div><p class="goods_title">'+value.title+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
				}
				// img 가 있을때
				else if(value.g_img){
		 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"><img alt="" src="resources/img/main_img/'+value.g_img+'" width="100%"></div><p class="goods_title">'+value.title+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
				}
	 			
	 		}
	 		

	 		
			 });
		  
	
		
	},
	error : function(xhr, status) {
		alert("ㅋㅋ넌못해");
	}
})

	


/* 더보기버튼 페이징 */
function indexup(){
	
		startindex = endindex + 1;
		endindex = endindex + 4; 
		
		var list = {
				"startindex" : startindex,
				"endindex" : endindex,
				"category" : category
				};
		
	$.ajax({
		url : "findlist.do",
		type : "POST",
		data : list,
		async: true,
		success : function(data) {
		
		 	 $.each(data.list, function(key, value){ 
		 		 
		 		if(value.title != null){
					// img 가 없을때
					if(!value.g_img){
		 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"><img alt="" src="resources/img/download.png" width="100%"></div><p class="goods_title">'+value.title+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
					}
					// img 가 있을때
					else if(value.g_img){
			 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"><img alt="" src="resources/img/main_img/'+value.g_img+'" width="100%"></div><p class="goods_title">'+value.title+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
					}
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
			"category" : category
			};
	
	
$.ajax({
	url : "findtitle.do",
	type : "POST",
	data : list,
	async: true,
	success : function(data) {
		
		console.log(data.list);
		
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
	 		// img 가 없을때
				if(!value.g_img){
	 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"><img alt="" src="resources/img/download.png" width="100%"></div><p class="goods_title">'+value.title+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
				}
				// img 가 있을때
				else if(value.g_img){
		 			$('.goodsbox').append('<a href="goodsdetail.do?seq='+value.seq+'&g_code='+value.g_code+'" class="goods" ><div class="goods_img"><img alt="" src="resources/img/main_img/'+value.g_img+'" width="100%"></div><p class="goods_title">'+value.title+'</p><p class="goods_price">₩ '+value.g_price+'</p></a>');
				}
		 		var node = $('.goodsbox').children();
	 			$("#goods_count").html(node.length); 
	 			$("#pageingbtn").hide();
	 		}
	 		
	 		
			 });
		}
		
		
		// 공백일때 페이지 새로고침
		else{
			location.reload();
			//$("#findtitle").focus();
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

