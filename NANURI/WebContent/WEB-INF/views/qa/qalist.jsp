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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%List<qaDto> qalist = (List<qaDto>) request.getAttribute("qalist");%>

<div class="startdiv">
<form action="">
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<%
			for (int i = 0; i < qalist.size(); i++) {
		%>
		<tr>
		<td><%=qalist.get(i).getSeq() %></td>
		<td><%=qalist.get(i).getTitle() %></td>
		<td><%=qalist.get(i).getWdate() %></td>
		<tr>
		<%
			}
		%>
		
	</table>
	<a href="qaWrite.do">글쓰기</a>
</form>
</div>
</body>
</html>





















