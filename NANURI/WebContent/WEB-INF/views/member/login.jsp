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
		<h1>Login</h1>

		<!-- Login_Box -->
		<div>
			<table>
				<colgroup>
					<col style="width: 30%">
					<col style="width: 70%">
				</colgroup>

				<tbody>
					<tr>
						<th>아이디</th>
						<td><input type="text" id="id" name="id"></td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" id="pwd" name="pwd"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;"><a
							href="javascript:loginAf()" class="btn btn-primary">로그인</a> <a
							href="regi.do" class="btn btn-primary">회원가입</a></td>
					</tr>
				</tbody>

			</table>
		</div>
		<!-- / Login_Box -->

	</div>
	<!-- / startdiv -->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#id").focus();
		});
	</script>
	<script type="text/javascript" src="resources/js/login.js"></script>
</body>
</html>