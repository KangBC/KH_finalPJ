<%@page import="com.kh.finalPJ.review.reviewDto"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 

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
//제대로 utf-8환경이 아니라 한글 깨짐 그래서 임의로 추가
request.setCharacterEncoding("utf-8");

reviewDto dto = (reviewDto)request.getAttribute("detailreview");
String str = dto.getContent();
%>


<div class="startdiv">
<form name="frmForm" id="_frmForm" method="post" action="reviewdetail.do">

<table class="list_table" style="width:85%;" >

<input type="hidden" name="seq"  value="<%=dto.getSeq() %>"/>
<colgroup>
<col style="width:200px;" />
<col style="width:auto;" />
</colgroup>

<tbody>	
	<tr class="id">
		<th>아이디</th>
		<td style="text-align: left"><%=dto.getId() %></td>
	</tr>
	<tr>
		<th>제목</th>
		<td style="text-align: left"><%=dto.getTitle() %></td>
	</tr>
		<tr>
		<th>★★별점★★</th>
		<td style="text-align: left">
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
		</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td style="text-align: left"><%=dto.getWdate().substring(0,16) %></td>
	</tr>
	<tr>
		<th>내용</th>
		<!-- 만약 textarea처럼 나타내고 싶은 경우 -->
		<td>
			<div contentEditable="true" id="content" name="content" style="border:1px solid; width:766px; height:412px; "></div>
		</td>

	</tr>
	<tr>
		<td colspan="2" style="height:50px; text-align:center;">
		
			 <input type="button" value="글 수정" onclick="location.href='reviewupdate.do?seq=<%=dto.getSeq()%>'">
			 <input type="button" value="글 삭제" onclick="deletereview('<%=dto.getSeq() %>')">
			 <input type="button" value="목록으로" onclick="location.href='reviewlist.do'">

		</td>
	</tr>
</tbody>
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

