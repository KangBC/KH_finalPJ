<%@page import="com.kh.finalPJ.review.reviewDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<reviewDto> list = (List<reviewDto>)request.getAttribute("reviewlist");

%>

<div class="startdiv">

<h2>후기</h2>
<form action="frmForm1" id="_frmFormSearch" method="post" action="">
<table border="1">
<tr>
	<!--검색부분 -->
	<td>검색</td>
	<td>
		<select id="r_category">
			<option value="" selected="selected">선택</option>
			<option value="title">제목</option>
			<option value="contents">내용</option>
			<option value="userid">작성자</option>
		</select>
	</td>
	<td style="padding-left:5px;">
		<input type="text" id="_s_keyword" name="s_keyword" value="${s_keyword}"/>
	</td>
	
	<td style="padding-left:5px;">
		<button type="button" id="_btnSearch"> 검색 </button>
	</td>

</tr>
</table>
</form>
<br>

<%
		for(int i = 0; i < list.size(); i++){
	%>
<ul class="review">
   <li>
       <div class="img">
          <!-- <img alt="" src=""> -->
       </div>
       <div class="text_view">
          <div>
             <a href="" class="title"><%=list.get(i).getTitle() %></a>
             <div class="star">ㅇㅇㅇㅇㅇ</div>
          </div>
          
          <p class="content"><a href=""><%=list.get(i).getContent() %></a></p>
          
       </div>
       <div class="idbox">
          <p class="id"><%=list.get(i).getId() %></p>
          <p class="date"><%=list.get(i).getWdate() %></p>
       </div>
   </li>

</ul>
<%
}
%>

<button type="button" onclick="location.href= 'reviewwrite.do'">글쓰기</button>

</div>
<br>


<script type="text/javascript">

$("#_btnSearch").click(function() {
	alert('search');						
	$("#_frmFormSearch").attr({ "target":"_self", "action":"reviewlist.do" }).submit();
	
});

</script>

</body>
</html>