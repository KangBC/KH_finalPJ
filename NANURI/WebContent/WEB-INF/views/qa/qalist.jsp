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
<link rel="stylesheet" type="text/css" href="resources/css/qa.css" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 

</head>
<body>

<%List<qaDto> qalist = (List<qaDto>) request.getAttribute("qalist");%>
<%List<qaDto> adminlist = (List<qaDto>) request.getAttribute("adminlist");%>

<!-- 로그인 세션값 헤더에서 받아오기 -->

<div class="startdiv">
<form action="">
	<table id="report">
		<%if(qalist != null) {%>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
			</tr>
				<%
					for (int i = 0; i < adminlist.size(); i++) {	/* 공지사항 뿌리기 */												
				%>
						<tr class="odd">					         
					            <td></td>
					            <td><%=adminlist.get(i).getTitle()%></td>
					            <td><%=adminlist.get(i).getId()%></td>
					    </tr>
					    <tr>
					            <td colspan="5">             
					                <label>제목:</label><h4><%=adminlist.get(i).getTitle()%></h4>
									<label>내용:</label><%=adminlist.get(i).getContent() %>							
					                <ul>
					                    <li>관리자 답변란</li>
					                </ul>   
					            </td>
					    </tr>
				<%} %>	
				
				<%
					for (int i = 0; i < qalist.size(); i++) {		/* 리스트뿌리기 */											
				%>		
						<%if(qalist.get(i).getSecret() == 0 && qalist.get(i).getDel() == 0) {%><!-- 공개글  --> 
							<%-- || (mem.getId().equals("<%=qalist.get(i).getId%>" && qalist.get(i).getDel() == 0)) 합쳐지면 if문안에 조건넣기--%>
							<tr class="odd">					         
					            <td><%=i+1 %></td>
					            <td><%=qalist.get(i).getTitle()%></td>
					            <td><%=qalist.get(i).getId()%></td>
					        </tr>
					        <tr>
					            <td colspan="5">             
					                <label>제목:</label><h4><%=qalist.get(i).getTitle()%></h4>
								<label>내용:</label><%=qalist.get(i).getContent() %>
								<!-- if(mem.login().getAuth == 1){ 뭐 이런 조건문 달기 -->
							 	<span><a href="ansWrite.do?ref=<%=qalist.get(i).getRef()%>&g_code=<%=qalist.get(i).getG_code()%>">답변 버튼위치</a></span>
					               <!-- ↑ 관리자만 버튼볼수있게  -->
					                <ul>
					                    <li>관리자 답변란</li>
					                 </ul>   
					            </td>
					        </tr>
							
						<%}else if(qalist.get(i).getSecret() == 1){ %><!-- 비공개글  --> 						
							<tr class="odd" >
								<td><%=i+1 %></td>
								<td>비공개 글입니다.</td>
								<td><%=qalist.get(i).getId() %></td>
								</tr>
								<tr>
							</tr>
						<%} %>
					<%
						}
					%>
				
			
		<%} else if(qalist == null) {%>				
			<tr>
				<td colspan="3">작성된 글이 없습니다.</td>
			</tr>
		<%}%>
		
	</table>
	<a href="qaWrite.do">글쓰기</a>
	<a href="qaAdminWrite.do">공지사항등록</a>
</form>
</div>
    
<script>
    $(document).ready(function(){

        $("#report tr:odd").addClass("odd");
        $("#report tr:not(.odd)").hide(); 
        $("#report tr:first-child").show(); //열머리글 보여주기

        $("#report tr.odd").click(function(){
        	
            $(this).next("tr").toggle();
            $(this).find(".arrow").toggleClass("up");

        });
    });
</script>




</body>
</html>





















