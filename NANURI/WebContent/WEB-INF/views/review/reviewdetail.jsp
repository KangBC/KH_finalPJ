<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@page import="com.kh.finalPJ.review.reviewDto"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 


<%
//제대로 utf-8환경이 아니라 한글 깨짐 그래서 임의로 추가
request.setCharacterEncoding("utf-8");


int rseq = (int)request.getAttribute("rseq");

reviewDto dto = (reviewDto)request.getAttribute("detailreview");

String str = dto.getContent();

memberDto mem = (memberDto)session.getAttribute("login");
if(mem==null){
	mem=new memberDto();
	mem.setId("null");
}
%>

<div class="startdiv">
<form name="frmForm" class="_frmForm" id="_frmForm" method="post" action="reviewdetail.do">

<table class="list_table" style="width:85%;" >
<input type="hidden" name="seq"  value="<%=dto.getSeq() %>"/>

<div class="top_box11">
	
	<!-- 이미지 -->
	<div class="goods_img11"><img alt="" src="resources/img/main_img/<%=dto.getG_img()%>" width="100%"> </div>
	
	<div>
	<ul>
		<li>아이디: <%=dto.getId() %></li>
		<li>제목: <%=dto.getTitle() %></li>
		<li>
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
		</li>
		
		<li>작성일:<%=dto.getWdate().substring(0,16) %> </li>
	</ul>
	</div>
</div>

	<tr> 
		<!-- 만약 textarea처럼 나타내고 싶은 경우 -->
		<td>
			<div id="content" class="reviewcontent" name="content" style="border:0px solid; width:766px;" ></div>
		</td>

	</tr>
	<tr>
		<td style="height:50px;">
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
		</td>
	</tr>
</table>

</form>
</div>

<script type="text/javascript">
var val='<%=str %>';
$("#content").html(val);

function deletereview(seq){
	location.href='deleterev.do?seq='+seq;
}
</script>

