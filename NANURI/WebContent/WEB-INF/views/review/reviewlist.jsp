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
<!-- 별css -->
<style type="text/css">
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}
</style>

<%
List<reviewDto> list = (List<reviewDto>)request.getAttribute("reviewlist");

String category = (String)request.getAttribute("s_category");
if(category == null) category = "";
%>


<div class="startdiv">

<h2>후기</h2>
<form action="frmForm1" id="_frmFormSearch" method="get" action="">

<!-- 페이징 -->
<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber}"/>						
<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?5:recordCountPerPage}"/>


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
             	<div class="star">별점수: <%=list.get(i).getRating() %></div>
<!-- =======별이다======= -->
<tr>
	<td class="starRev">
 		 <span class="starR1">1</span>
 		 <span class="starR2">2</span>
 		 <span class="starR1">3</span>
 		 <span class="starR2">4</span>
 		 <span class="starR1">5</span>
 		 <span class="starR2">6</span>
 		 <span class="starR1">7</span>
		 <span class="starR2">8</span>
 		 <span class="starR1">9</span>
 		 <span class="starR2">10</span>
	</td>
<tr>
<input type="hidden" name="rating" id="rating" value="0">
      			
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

/* 검색 카테고리를 유지 start */
var str='<%=category%>';
$(document).ready(function(){	
	//document.frmForm1.s_category.value = str;
	$("#_s_category").val(str);
	
	// text에 문자를 입력하지 않았을 경우, 초기화 해준다.
 	if($("#_s_keyword").val().trim() == ""){
 		//document.frmForm1.s_category.value = "";
		$("#_s_category").val("");
	}
}); 

/* 
별점작동
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  
	  grade = $(this).text();
	  $("#grade").html("&nbsp;&nbsp;" + $(this).text());
	  
	  $("#rating").val(grade);
	  alert(grade);
	  
	  return false;
}); */

</script>



</body>
</html>