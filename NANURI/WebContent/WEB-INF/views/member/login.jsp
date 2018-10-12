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
			<form action="loginAf.do" method="post">
			
				<table>
					<colgroup>
						<col style="width: 30%">
						<col style="width: 70%">
					</colgroup>

					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="text" name="pwd"></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;"><input
								type="submit" value="로그인"> <a href="regi.do">회원가입</a></td>
						</tr>
					</tbody>
					
				</table>
				
			</form>
		</div>
		<!-- / Login_Box -->
		
	</div>
	<!-- / startdiv -->
</body>
</html>