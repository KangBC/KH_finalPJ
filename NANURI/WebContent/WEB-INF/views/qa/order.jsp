<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 

</head>
<body>

<div class="startdiv">

<form action="" method="post">
	<div>
		<h3>1.주문상품 할인적용</h3>
	</div>
	<div>	
		<table cellspacing="0" border="1" style="border-collapse:collapse; border:1px gray solid">
			<thead>
				<tr>
					<th>상품정보</th>					
					<th>판매자</th>
					<th>배송비</th>
				</tr>
			</thead>			
			<tbody>	
				<tr>
					<td>상품정보디비에서 갖구오기</td>
					<td>나누리</td>
					<td>4000</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div>	
		<table cellspacing="0" border="1"  style="border-collapse:collapse; border:1px gray solid">			
			<tbody>
				<tr>
					<td>상품금액</td>
					<td>배송비</td>
					<td>최종결제금액</td>
				</tr>
					
				<tr>
					<td>디비에서 불러온 상품 금액</td>
					<td>4000</td>
					<td>디비에서 불러온금액 + 4000</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div>
		<h4>주문자 정보 입력</h4>
		연락처<select>
				<option selected="selected">010</option>
				<option>011</option>
				<option>016</option>
				<option>017</option>
				<option>018</option>
				<option>019</option>
			</select>
			-
			<input type="text" value="">-<input type="text" value="">
			<br><br>
		주소<input type="text" readonly="readonly"><button>주소찾기 API</button>	
		<br><br>
		<input type="text"> <input type="text">
	</div>
	
	<div>
		<h3>2.배송지 정보 입력</h3>
		배송지선택 <br><br>
		이름 <input type="text">
		주소<input type="text" readonly="readonly"><button>주소찾기 API</button>	
		<br><br>
		<input type="text"> <input type="text" value="상세주소를 입력해주세요">
		<br><br>
		연락처<select>
				<option selected="selected">010</option>
				<option>011</option>
				<option>016</option>
				<option>017</option>
				<option>018</option>
				<option>019</option>
			</select>
			-
			<input type="text" value="">-<input type="text" value="">
			<br><br>
		배송 메시지 <input type="text" value="택배 기사님께  전달할 배송메시지를  입력해주세요.">	
		
		<div>
			<h3>3.결제정보입력</h3>
			<h6>결제 API</h6>
		</div>
		
		<div>
			<input type="text" value="000원"><br><br>
			<input type="submit" value="결제하기">
		</div>
		
	</div>
</form>

</div>

</body>
</html>






















