<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NANURI</title>
</head>
<body>
	<div class="startdiv">
		<div class="row">
			<div style="width: 220px;">
				<div style="margin-top: 70px; border: 1px solid; margin-right: 30px">
					<jsp:include page="mypage_leftbar.jsp"/>
				</div>
			</div>

			<div style="width: 880px;">
				<div class="row"
					style="border-bottom: 3px solid; padding-bottom: 10px">
					<div class="col-md-8">
						<h1>마이페이지</h1>
					</div>
					<div class="col-md-4" style="text-align: right; padding-top: 15px">
						<a href="main.do">메인</a> > <a href="mypage.do">마이페이지</a>
					</div>
				</div>
				<h1>${login.id}님환영합니다</h1>
			</div>
		</div>
	</div>
</body>
</html>