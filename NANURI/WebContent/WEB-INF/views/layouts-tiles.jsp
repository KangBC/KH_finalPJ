<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--	request.setCharacterEncoding("utf-8"); --%>

<fmt:requestEncoding value="utf-8" />


<!-- <!DOCTYPE html> 이게 들어가 있어서 작게 나옴 이거 없으면 꽉 찬 화면으로 나옴-->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- meta -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge"> -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- CSS -->
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="resources/bootstrap/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="resources/bootstrap/css/style.css" rel="stylesheet">

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
		<tiles:insertAttribute name="header" />
	</div>
	<div class="content">
		<tiles:insertAttribute name="leftmenu" />
		<tiles:insertAttribute name="content" />
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript"
		src="resources/bootstrap/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="resources/bootstrap/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="resources/bootstrap/js/mdb.min.js"></script>

</body>
</html>