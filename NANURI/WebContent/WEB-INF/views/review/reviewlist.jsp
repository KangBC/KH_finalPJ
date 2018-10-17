<%@page import="com.kh.finalPJ.review.reviewDao"%>
<%@page import="com.kh.finalPJ.review.reviewDaoImpl"%>
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

String category = (String)request.getAttribute("s_category");
if(category == null) category = "";
%>

<script type="text/javascript">

/* 검색 카테고리를 유지 start */
var str='<%=category %>';
$(document).ready(function(){	
	document.frmForm1.s_category.value = str;
	
	// text에 문자를 입력하지 않았을 경우, 초기화 해준다.
	if($("#_s_keyword").val().trim() == ""){
		document.frmForm1.s_category.value = "";
	}	
}); 

</script>

<div class="startdiv">

<h2>후기</h2>
<form action="frmForm1" id="_frmFormSearch" method="post" action="">

<!-- 페이징 -->
<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber}"/>						
<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?5:recordCountPerPage}"/>

</form>
<br>

<%
	for(int i = 0; i < list.size(); i++){
%>
<ul class="review">
   <li>
  	<!--상품사진넣기  ////////////-->
       <div class="img">
          <!-- <img alt="" src=""> -->
       </div>
    <!--/////////////////  -->
    
       <div class="text_view" onclick="location.href='reviewdetail.do?seq=<%=list.get(i).getSeq()%>'" style="cursor: pointer;">
       	<div>
             <a href="reviewdetail.do?seq=<%=list.get(i).getSeq()%>" class="title"><%=list.get(i).getTitle() %></a>
             	
             	<!-- 별점 -->
             	<div class="star">ㅇㅇㅇㅇㅇ</div>
      			
      			
      			</div>
      			<!-- 별점 끝 -->
    	</div>
       <div class="idbox">
          <p class="id"><%=list.get(i).getId() %></p>
          <p class="wdate"><%=list.get(i).getWdate().substring(0,16) %></p>
       </div>
   </li>

</ul>
<%
}
%>

<!--검색부분 -->
<div align="center">
		<select id="_s_category" name="s_category">
			<option value="" selected="selected">선택</option>
			<option value="title">제목</option>
			<option value="contents">내용</option>
			<option value="userid">작성자</option>
		</select>

		<input type="text" id="_s_keyword" name="s_keyword" value="${s_keyword}"/>

		<button type="button" id="_btnSearch"> 검색 </button>
</div>

<button type="button" onclick="location.href='reviewwrite.do'">글쓰기</button>

</div>
<br>
<!-- 페이징 처리 -->
<div id="paging_wrap">
<jsp:include page="/WEB-INF/views/review/paging.jsp" flush="false">
	<jsp:param value="${pageNumber }" name="pageNumber"/>
	<jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen"/>
	<jsp:param value="${recordCountPerPage }" name="recordCountPerPage"/>
	<jsp:param value="${totalRecordCount }" name="totalRecordCount"/>
</jsp:include>
</div>

<script type="text/javascript">
function goPage(pageNumber) {	
	$("#_pageNumber").val(pageNumber) ;
	$("#_frmFormSearch").attr("target","_self").attr("action","reviewlist.do").submit();
}

$("#_btnSearch").click(function() {
	//alert('search');						
	$("#_frmFormSearch").attr({ "target":"_self", "action":"reviewlist.do" }).submit();
	
});

</script>



</body>
</html>