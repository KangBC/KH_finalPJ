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

<div class="page-b">

	<div class="selectbox">
		
		<span class="check_c">
		<input type="checkbox" id="ck1">
		<label for="ck1">가전제품</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck2">
		<label for="ck2">가전제품</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck3">
		<label for="ck3">가전제품</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck4">
		<label for="ck4">가전제품</label>
		</span>
		<span class="check_c">
		<input type="checkbox" id="ck5">
		<label for="ck5">가전제품</label>
		</span>
		
		<div>
			<input type="text" id="findtitle" onkeyup="findtitle_btn()">
			<button onclick="findtitle_btn()">asasa</button>
			
		</div>
		
	</div>

<div class="goodsbox_h">
<p>총  <%=bbslist.size() %> 개 의 상품이 있습니다.</p>
</div>
<hr style="height: 1px;background: #333">

	<div class="goodsbox" id="goodsbox">
		<%
			for(int i=0; i < bbslist.size(); i++){
		%>
		<a href="goodsdetail.do?seq=<%=bbslist.get(i).getSeq() %>" class="goods goods<%=bbslist.get(i).getSeq() %>" >
			<div class="goods_img"></div>
			<p class="goods_title"><%=bbslist.get(i).getTitle() %></p>
			<p class="goods_content"><%=bbslist.get(i).getContent() %></p>
			<p class="goods_price">₩ <%=bbslist.get(i).getG_price() %></p>
		</a>
	<% 
			}
	%>
	</div>


	



</div>








</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">

function test(){
var page = document.getElementById("asd");
var nodes = page.getElementsByClassName("goods");

if(nodes.length > 4 ){
	alert("asdfasdf");
}

 //alert("자식 노드 개수는? "+ nodes.length);

}

</script>

<script type="text/javascript">
	
	
		
		
		function findtitle_btn(){
		var title = $("#findtitle").val();
		
$.ajax({
	url : "findtitle.do",
	type : "POST",
	data : "title=" + title,
	async: false,
	success : function(data) {
			
		
		
		   if(!data.title){
			//alert("값이 없습니다.");
		}else if(title == ""){
			$('.goodsbox').children('.goods').show();
		}
		else{
		$('.goodsbox').children('.goods').hide();
		
		$('.goodsbox').children('.goods'+data.seq).show(); 
		

		
		
		
		
	/* 	
		$.each(data, function(k, v){ 
			$('.goodsbox').children('.goods'+data.seq).show();
			alert(k+ "   " + v.S);
			});
		 */
		
		
		//$('.goodsbox').append('<a href="goodsdetail.do?seq='+data.seq+'" class="goods" ><div class="goods_img"></div><p class="goods_title">'+data.title+'</p><p class="goods_content">'+data.content+'</p><p class="goods_price">₩ '+data.g_price+'</p></a>');
		
		} 
		
	},
	error : function(xhr, status) {
		alert("ㅋㅋ넌못해");
	}
})
		}

	
</script>

