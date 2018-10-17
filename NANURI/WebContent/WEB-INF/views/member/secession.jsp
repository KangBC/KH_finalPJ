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
						<h1>회원탈퇴</h1>
					</div>
					<div class="col-md-4" style="text-align: right; padding-top: 15px">
						<a href="main.do">메인</a> > <a href="mypage.do">마이페이지</a> > <a
							href="secession.do">회원탈퇴</a>
					</div>
				</div>

				<!-- main view -->
				<form action="secessionAf.do" method="post">
					<input type="hidden" id="del_id" name="del_id" value="${login.id} ">
					<div class="form-group" style="margin-top: 10px">
						<label for="del_reason">*탈퇴사유를 입력하시오.</label>
						<textarea class="form-control" name="del_reason" id="del_reason"
							rows="7"></textarea>
					</div>
					<div class="row">
						<button type="button" data-toggle="modal" data-target="#modalPush">회원탈퇴</button>
					</div>
				</form>

			</div>
			<!-- / main content -->
		</div>
		<!-- / layout_border -->
	</div>
	<!-- / startdiv -->
	<jsp:include page="secession_modal.jsp" />
	<script type="text/javascript" src="resources/js/secession.js"></script>
</body>
</html>