<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NANURI</title>
</head>
<body>
	<!-- startdiv -->
	<div class="startdiv">
		<!-- layout_border -->
		<div class="row">

			<!-- left bar -->
			<div style="width: 220px;">
				<div style="margin-top: 70px; border: 1px solid; margin-right: 30px">
					<jsp:include page="mypage_leftbar.jsp" />
				</div>
			</div>
			<!-- / left bar -->

			<!-- main content -->
			<div style="width: 880px;">

				<!-- main head -->
				<div class="row"
					style="border-bottom: 3px solid; padding-bottom: 10px">
					<div class="col-md-8">
						<h1>렌탈 목록</h1>
					</div>
					<div class="col-md-4" style="text-align: right; padding-top: 15px">
						<a href="main.do">메인</a> > <a href="mypage.do">마이페이지</a> > <a
							href="rentalList.do">렌탈 목록</a>
					</div>
				</div>

				<!-- main view -->
				

			</div>
			<!-- / main content -->
		</div>
		<!-- / layout_border -->
	</div>
	<!-- / startdiv -->
</body>
</html>