<%@page import="org.apache.tomcat.util.descriptor.web.LoginConfig"%>
<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@page import="java.util.List"%>
<%@page import="com.kh.finalPJ.qa.qaDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>    
        body { font-family:Arial, Helvetica, Sans-Serif; font-size:0.8em;}
        #report { border-collapse:collapse; width:500px}
        #report h4 { margin:0px; padding:0px;}
        #report th { background:#7CB8E2 url(header_bkg.png) repeat-x scroll center left; color:#fff; padding:7px 15px; text-align:left;}
        #report td { background:#C7DDEE none repeat-x scroll center left; color:#000; padding:7px 15px; }
        #report tr.odd td { background:#fff url(row_bkg.png) repeat-x scroll center left; cursor:pointer; }
        #report div.arrow { background:transparent url(arrows.png) no-repeat scroll 0px -16px; width:16px; height:16px; display:block;}
        #report div.up { background-position:0px 0px;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 

</head>
<body>

<%List<Integer> allref = (List<Integer>) request.getAttribute("allref");%>   <!-- 답변버튼 중복생성 맞기위해 생성 -->
<%List<Integer> reflist = (List<Integer>) request.getAttribute("reflist");%> <!-- 로그인 아이디에 해당하는 REF 받아와서 답변과 함께 뿌려주기 위함 -->
<%List<qaDto> qalist = (List<qaDto>) request.getAttribute("qalist");%>		 <!-- Q&A 리스트 -->
<%List<qaDto> adminlist = (List<qaDto>) request.getAttribute("adminlist");%> <!-- 공지사항  -->
<% memberDto mem = null;
if(session.getAttribute("login") != null){	
	 mem = (memberDto)session.getAttribute("login");
}else{
	 mem = new memberDto();
	 mem.setAuth(-1);
	 mem.setId("null");
}
%>

<!-- 로그인 세션값 헤더에서 받아오기 -->

<div class="startdiv">
<form id="_frmFormSearch" method="get" action="">
	<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber}"/>
	<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?10:recordCountPerPage}"/>	
</form>
	<table id="report">
		<%if(adminlist.size()>0|| qalist.size()>0) {%>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>게시일</th>
			</tr>
			 	<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 공지사항 뿌리기 ㅡㅡㅡㅡㅡㅡㅡㅡㅡ-->
				<%
					for (int i = 0; i < adminlist.size(); i++) {							
				%>
						<tr class="odd">					         
					            <td></td>
					            <td><%=adminlist.get(i).getTitle()%></td>
					            <td><%=adminlist.get(i).getId()%></td>
					            <td><%=adminlist.get(i).getWdate().substring(0, 16) %></td>
					    </tr>
					    <tr style="display: none">
					            <td colspan="3">             
					                <label>제목:</label><h4><%=adminlist.get(i).getTitle()%></h4>
									<label>내용:</label><%=adminlist.get(i).getContent() %>	
								<%if(mem.getAuth() == 2){ %>
					            	<span><a href="ansDelete.do?seq=<%=adminlist.get(i).getSeq()%>">공지사항삭제 버튼위치</a></span>
					            <%} %>				             
					            </td>					      
					    </tr>
				<%} %>	
				<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡ리스트뿌리기 ㅡㅡㅡㅡㅡㅡㅡㅡㅡ  -->
				<%
					for (int i = 0; i < qalist.size(); i++) {		
							List<Integer> allref2 = allref; // 답변버튼 중복생성안되게 만들기위해 필요한 변수
						if((qalist.get(i).getSecret() == 0 && qalist.get(i).getDel() == 0) ||
							(reflist.contains(qalist.get(i).getRef())  && (qalist.get(i).getDel() == 0)) ||
							(mem.getAuth() == 2)) {%><!-- 공개글  --> 							
							<tr class="odd">
								<%if(qalist.get(i).getTitle().equals("관리자 답변입니다.")){ %>				         
					            	<td>└ A</td>
					            	<td>└ <%=qalist.get(i).getTitle()%></td>
					            <%}else{ %>
					            	<td>Q</td>
					            	<td><%=qalist.get(i).getTitle()%></td>
					            <%} %>	
						            <td><%=qalist.get(i).getId()%></td>	<!-- 수정중  -->
					            	<td><%=qalist.get(i).getWdate().substring(0, 16) %></td>						           
					        </tr>
					        <tr style="display: none">					  
					            <td colspan="3">             
					            <label>제목:</label><h4><%=qalist.get(i).getTitle()%></h4>
								<label>내용:</label><%=qalist.get(i).getContent() %>
									<%if((!qalist.get(i).getTitle().equals("관리자 답변입니다.")) && (mem.getAuth() == 2)){%>
										<%
										allref2.set(i,-2);
										if(!allref2.contains(qalist.get(i).getRef())){ %>					
							 				<span><a href="ansWrite.do?ref=<%=qalist.get(i).getRef()%>&g_code=<%=qalist.get(i).getG_code()%>&secret=<%=qalist.get(i).getSecret()%>">답변 버튼위치</a></span>
					               		<%} %>
					               <%} %>
					               	<%if(!qalist.get(i).getTitle().equals("관리자 답변입니다.") && (mem.getId().equals(qalist.get(i).getId()) || mem.getAuth() == 2)) {%>
					            		<span><a href="delete.do?ref=<%=qalist.get(i).getRef()%>">삭제 버튼위치</a></span>
					            	<%} %>
					            	<%if(qalist.get(i).getTitle().equals("관리자 답변입니다.") && mem.getAuth() == 2){ %>
					            		<span><a href="ansDelete.do?seq=<%=qalist.get(i).getSeq()%>">답변삭제 버튼위치</a></span>
					            	<%} %>   
					            </td>					           
					        </tr>
							
						<%}else if(qalist.get(i).getSecret() == 1){ %><!-- 비공개글  --> 
							<tr class="odd">						
							<%if(qalist.get(i).getTitle().equals("관리자 답변입니다.")){ %>							
								<td>A</td>
							<%}else{ %>
								<td>Q</td>
								<%} %>
							<%if(qalist.get(i).getTitle().equals("관리자 답변입니다.")){ %>	
								<td>비공개글 답변입니다.</td>
							<%}else{ %>
								<td>비공개 글입니다.</td>
							<%} %>
								<td><%=qalist.get(i).getId() %></td>
							</tr>
							<tr>
							</tr>
						<%} %>
					<%
						}
					%>			
		<%} else {%>	
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>게시일</th>
			</tr>			
			<tr>
				<td colspan="4">작성된 글이 없습니다.</td>
			</tr>
		<%}%>
		
	</table>
	
	<!-- 페이징 처리 -->
	<div id="paging_wrap">
	<jsp:include page="/WEB-INF/views/qa/paging.jsp" flush="false">
		<jsp:param value="${pageNumber }" name="pageNumber"/>
		<jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen"/>
		<jsp:param value="${recordCountPerPage }" name="recordCountPerPage"/>
		<jsp:param value="${totalRecordCount }" name="totalRecordCount"/>
	</jsp:include>
	</div>
	
	<%if(mem.getAuth() == 0){ %>
		<a href="qaWrite.do">글쓰기</a>
	<%}else if(mem.getAuth() == 2){ %>
		<a href="qaAdminWrite.do">공지사항등록</a>
	<%} %>

</div>
    
<script>
    $(function(){

        $("#report tr:odd").addClass("odd");      
        $("#report tr:first-child").show(); //열머리글 보여주기 

        $("#report tr.odd").click(function(){
        	
            $(this).next("tr").toggle();
            $(this).find(".arrow").toggleClass("up");

        });
    });
    
    function goPage(pageNumber) {	
    	$("#_pageNumber").val(pageNumber) ;
    	$("#_frmFormSearch").attr("target","_self").attr("action","qnalist.do").submit();
    }
</script>




</body>
</html>





















