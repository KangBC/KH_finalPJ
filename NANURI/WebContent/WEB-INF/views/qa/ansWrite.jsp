<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@page import="com.kh.finalPJ.qa.qaDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%qaDto ansdto =(qaDto) request.getAttribute("ansdto");%>
<%memberDto mem = (memberDto)session.getAttribute("login"); %>

<div class="startdiv">
	<form action="ansWriteAf.do" id="_frmForm" method="post">
		
		<label>제목</label>
		<input type="text" name="title" value="관리자 답변입니다." readonly="readonly"><br>
		
		<label>내용</label>
		<textarea rows="10" cols="50" name="content" required></textarea><br>
		<!-- <input type="submit" value="작성완료"> -->
		<input type="submit" value="작성완료">
		<input type="hidden" name="ref" value="<%=ansdto.getRef()%>">
		<input type="hidden" name="g_code" value="<%=ansdto.getG_code()%>">
		<input type="hidden" name="secret" value="<%=ansdto.getSecret()%>">
		<input type="hidden" name="id" value="<%=mem.getId()%>">
	</form>	
</div>


</body>
</html>











