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
	<div style="font-style: italic; padding-left: 269px; font-size: 35; padding-bottom: 5px;">
		Q&A 답변
	</div>

	<div style="width: 500px; margin: 0px auto;">
		<form action="ansWriteAf.do" id="_frmForm" method="post">
			<div style="padding-left: 30px; border-top: 1px solid #e1e1e1; border-bottom: 1px solid #e1e1e1; padding-top: 8px;
	   					padding-bottom: 5px; margin-top: 5px; margin-bottom: 5px;">
				<label>제목</label>
				<input type="text" name="title" value="관리자 답변입니다." readonly="readonly"><br>
			</div>	
			
				<label style="padding-left: 30px;">내용</label>
				<div style="padding-left: 30px;">  
				<textarea rows="10" cols="50" name="content" style="width: 450px; text-decoration: none; outline:none; resize: none;" required></textarea><br>
				</div>
			<div align="center" style="padding-top: 12px;">	
				<input type="submit" value="완료">
					<input type="hidden" name="ref" value="<%=ansdto.getRef()%>">
					<input type="hidden" name="g_code" value="<%=ansdto.getG_code()%>">
					<input type="hidden" name="secret" value="<%=ansdto.getSecret()%>">
					<input type="hidden" name="id" value="<%=mem.getId()%>">
					&nbsp;&nbsp;
				<input type="button" onclick="cancel()" value="취소">	
			</div>
		</form>	
	</div>
</div>

<script type="text/javascript">
function cancel() {
	location.href="qnalist.do";
}
</script>


</body>
</html>











