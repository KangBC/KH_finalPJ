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

	

<div class="goodsbox_h">

 <p class="goods_countbox">총  <span id="goods_count"><%=bbslist.size() %></span> 개 의 상품이 있습니다.</p> 

</div>
<hr style="height: 1px;background: #333;margin: 0;">

	<div class="goodsbox" id="goodsbox">
	
	 	
		<%
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
	
	 
	</div>



</div>







</div>




