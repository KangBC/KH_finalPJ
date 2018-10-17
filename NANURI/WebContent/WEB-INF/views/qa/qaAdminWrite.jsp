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
<div class="startdiv">
	<form action="qaAdminWriteAf.do" id="_frmForm" method="post">
		<label>아이디</label>
		<input type="text" name="id"><br> <!-- 나중에 로그인 세션값으로 수정 readonly-->
		<label>제목</label>
		<input type="text" name="title"><br>	
		<label>내용</label>
		<textarea rows="10" cols="50" name="content"></textarea><br>
		<!-- <input type="submit" value="작성완료"> -->
		<input type="submit"  value="공지사항 등록">
	</form>	
</div>


</body>
</html>











