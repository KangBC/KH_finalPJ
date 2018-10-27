<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@page import="com.kh.finalPJ.review.reviewDto"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 


<%
request.setCharacterEncoding("utf-8");

int rseq = (int)request.getAttribute("rseq");

reviewDto dto = (reviewDto)request.getAttribute("detailreview");

String str = dto.getContent();

memberDto mem = (memberDto)session.getAttribute("login");
if(mem==null){
	mem = new memberDto();
	mem.setId("null");
}
%>

<div class="startdiv">
<form name="frmForm" class="_frmForm" id="_frmForm" method="post" action="reviewdetail.do">

<input type="hidden" name="seq"  value="<%=dto.getSeq() %>"/>

<!-- 이미지 -->
<div class="goods_img11"><img alt="" src="resources/img/main_img/<%=dto.getG_img()%>" width="100%"> </div>

<div class="top_right" style="padding-left: 180px; padding-top: 180px; padding-bottom: 10px">
<ul>
	<li>아이디: <%=dto.getId() %></li>
	<li>제목: <%=dto.getTitle() %></li>
	<li>작성일:<%=dto.getWdate().substring(0,16) %></li>

	<!-- 별점 -->
		<div class="starRev">
 		<%
			for(int j = 1 ; j<=10 ; j++){ 
				if(j%2==1){
					if(j <= (int)dto.getRating()){
		%>
				  		<span class="starR1 on"></span>
					  <%
						}else{
					  %>
					  		<span class="starR1"></span>
				  		<%
				  			}
						}else if(j%2==0){
							if(j <= (int)dto.getRating()){
						%>
		  						<span class="starR2 on"></span>
							<% 
								}else{
							%>
								<span class="starR2"></span>
							<%
								}
							}
						}
						%>	
	</div>
		<h5>&nbsp;&nbsp;<%=dto.getRating() %>점</h5>
	<!-- 별점  끝-->
</ul>
</div>
<!-- 만약 textarea처럼 나타내고 싶은 경우 -->
	<div id="content" class="reviewcontent" name="content" style="border:1px solid; width:766px;" ></div>
	<div align="right" style="width:766px;">
		<%
            if (mem.getId().equals(dto.getId()) ) {
         %>
			 <input type="button" value="글 수정" onclick="location.href='reviewupdate.do?seq=<%=dto.getSeq()%>'">
			 <input type="button" value="글 삭제" onclick="deletereview('<%=dto.getSeq() %>')">
			 
		  <%
              }
          %>
			 <input type="button" value="목록으로" onclick="location.href='reviewlist.do'">
			 <input type="button" value="해당 상품으로" onclick="location.href='goodsdetail.do?g_code=<%=dto.getG_code()%>&seq=<%=rseq%>'">



</div>
</form>

<script type="text/javascript">
var val='<%=str %>';
$("#content").html(val);

function deletereview(seq){
	location.href='deleterev.do?seq='+seq;
}
</script>

