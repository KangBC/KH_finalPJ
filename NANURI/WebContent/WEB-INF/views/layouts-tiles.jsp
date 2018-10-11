<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--	request.setCharacterEncoding("utf-8"); --%>

<fmt:requestEncoding value="utf-8"/>


<!-- <!DOCTYPE html> 이게 들어가 있어서 작게 나옴 이거 없으면 꽉 찬 화면으로 나옴-->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css 상속 -->
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>
<body>

<%-- <table border="1" style="width: 100%; height: 100%; border-color: Gray" >
	<tr align="center">
		<td height="10%" colspan="2">
			<!-- 위쪽의 위치설정 (header).. (name에따라서 동작시키게 만듬)-->
			<tiles:insertAttribute name="header"/>
		</td>
	</tr>
	<tr> <!-- menu , content  -->
		<td>
			<!-- 70%에 해당하는 content -->
			<tiles:insertAttribute name="content"/>
		</td>
	</tr>
	<tr align="center">
		<td height="10%" colspan="2">
			<!-- footer -->
			<tiles:insertAttribute name="footer"/>
		</td>
	</tr>
	

</table> --%>


<div class="header">
<tiles:insertAttribute name="header"/>
</div>
<div class="content">
<tiles:insertAttribute name="content"/>
</div>
<div class="footer">
<tiles:insertAttribute name="footer"/>
</div>








</body>
</html>