<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@page import="com.kh.finalPJ.qa.qaDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%memberDto mem = (memberDto)session.getAttribute("login"); %>

<div class="startdiv">
	<div style="width: 500px; margin: 0px auto;">
		<form action="qaWriteAf.do" id="_frmForm" method="post">
			<div style="padding-left: 30px; border-top: 1px solid #e1e1e1; padding-top: 8px;">
				<label>아이디 : </label>
				<input type="text" name="id" value="<%=mem.getId()%>" readonly="readonly"><br>
			</div> 
			<div style="padding-left: 30px; border-top: 1px solid #e1e1e1; border-bottom: 1px solid #e1e1e1; padding-top: 8px;
	   					padding-bottom: 5px; margin-top: 5px; margin-bottom: 5px;">
				<label>제   목  : </label>
				<input type="text" name="title" style="margin-left: 10;" required ><br>
			</div>
			<div style="padding-left: 30px; border-bottom: 1px solid #e1e1e1; margin-bottom: 15px;">	
				<label>글공개여부 </label>
				<input type="checkbox" id="check" name="check"><br>
			</div>
			<label style="padding-left: 30px;">내용</label>
			<div style="padding-left: 30px;">			
				<textarea rows="10" cols="50" name="content" style="width: 450px; text-decoration: none; outline:none; resize: none;" required></textarea><br>
			</div>	
			<input type="submit" style="margin-left: 408; margin-top: 14;" value="작성완료">
		</form>	
	</div>
</div>


</body>
</html>











