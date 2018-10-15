<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="startdiv">
	<form action="qaWriteAf.do" method="post">
		<label>아이디</label>
		<input type="text" name="id"><br> <!-- 나중에 로그인 세션값으로 수정 readonly-->
		<label>제목</label>
		<input type="text" name="title"><br>
		<label>글공개여부</label>
		<input type="checkbox" name="secret"><br>
		<label>내용</label>
		<textarea rows="10" cols="50" name="content"></textarea><br>
		<input type="submit" value="작성완료">
	</form>

</div>


</body>
</html>