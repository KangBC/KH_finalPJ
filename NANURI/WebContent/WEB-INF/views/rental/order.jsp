<%@page import="com.kh.finalPJ.member.RStatusDto"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="utf-8" />

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="resources/js/order.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</head>
<body>

<!-- 주문 코드 생성 -->
<sql:setDataSource
    url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
    driver="oracle.jdbc.driver.OracleDriver"
    user="final"
    password="final"
    var= "conn"/>
    
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="today"><fmt:formatDate value="${now}" pattern="yyyyMMdd" /></c:set>

<sql:query sql="select SEQ_R_STATUS.nextval from dual" var="getseq" dataSource="${conn}" />
<c:forEach var="seqobj" items="${getseq.rowsByIndex}">
	<c:set var="seq" value="${seqobj[0]}"/>
</c:forEach>
   
<c:set var="merchant_uid" value="S${today}${seq}"/>
<input id="merchant_uid" type="hidden" value="merchant_uid">

<!-- 주문 정보 -->
<div class="startdiv">
	<div>
		<h3>주문자 정보</h3> 
		<div>
	  	<ul style="height: 70px; border: 1px solid #dddddd; background: #f8f8f8; padding: 20px; ">
	    	<li style="float:left; width: 300px; border-left: 1px solid #dddddd;"><b>주문자</b> ${member.name}</li>
	    	<li style="float:left; width: 300px; border-left: 1px solid #dddddd;"><b>연락처</b> ${member.phone}</li>
	    	<li style="float:left; width: 300px; border-left: 1px solid #dddddd;"><b>이메일</b> ${member.email}</li>
	  	</ul>
		</div>
	    <input id="buyer" type="hidden" value="${member.name}">
	    <input id="buyer_email" type="hidden" value="${member.email}">
	    <input id="buyer_phone_f" type="hidden" value="${fn:split(member.phone,'-')[0]}">
	    <input id="buyer_phone_m" type="hidden" value="${fn:split(member.phone,'-')[1]}">
	    <input id="buyer_phone_b" type="hidden" value="${fn:split(member.phone,'-')[2]}">
	    <input id="buyer_address_n" type="hidden" value="${fn:split(member.address,'-')[0]}">
	    <input id="buyer_address_m" type="hidden" value="${fn:split(member.address,'-')[1]}">
	    <input id="buyer_address_d" type="hidden" value="${fn:split(member.address,'-')[2]}">
	</div>
	<br>

	
	<div>	
		<h3>상품 정보</h3>
		<table cellspacing="0" border="1" style="border-collapse:collapse; border:1px gray solid">
			<thead>
				<tr>
					<th>상품 이미지</th>					
					<th>상품정보</th>					
					<th>수량</th>
					<th>기간</th>
					<th>금액</th>					
				</tr>
			</thead>			
			<tbody>	
			<c:forEach var="item" items="${goodsList}" varStatus="status">
				<c:set var="price_one" value="${item.g_price*orderList[status.index].amount*orderList[status.index].month }"/>
				<c:set var="total" value="${total+price_one}"/>
				<tr>
					<td><img src="resources/img/main_img/${item.g_img }"></td>
					<td>${item.g_code}</td>
					<td>${orderList[status.index].amount}</td>
					<td>${orderList[status.index].month}</td>
					<td>${price_one}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<input id="total_price" type="hidden" value='${total}' >
	</div>
	<br>
	
	
	<div>
		<h3 style="display: inline;">배송지 정보 </h3> 
		<input id="copy" type="checkbox"><label for="copy">주문자와 동일</label><br>
		<label for="recipient">수령인</label>
		<input id="recipient" type="text"> <br>		
		<label for="phone_container">전화번호</label>
		<div id="phone_container" style="display: inline-block;">
		<select id="phone_f">
			<option selected="selected">010</option>
			<option>011</option>
			<option>016</option>
			<option>017</option>
			<option>018</option>
			<option>019</option>
		</select>-
		<input id="phone_m" type="text" value="">-<input id="phone_b" type="text" value="">
		</div>
		<br>
		<label for="address_container">주소</label>	
		<div id="address_container">
			<input type="hidden" name="address" id="address" value="">					
			<input type="text" id="address_num" name="address_num" placeholder="Address Number"	readonly="readonly" >					
			<button type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
			<br>
			<input type="text" id="address_main" name="address_main" placeholder="Confirm your address" readonly="readonly" >
			<input type="text" id="address_detail" name="address_detail" placeholder="Address Detail" >
		</div>
		<br>
		<br>
	</div>
	
	<div>
		<div>
		<h3>3.결제정보입력</h3>
		<table cellspacing="0" border="1"  style="border-collapse:collapse; border:1px gray solid">			
			<tbody>
				<tr>
					<td>상품금액</td>
					<td>배송비</td>
					<td>최종결제금액</td>
				</tr>					
				<tr>
					<td><c:out value="${total}"/></td>
					<td>4500</td>
					<td><c:out value="${total+4500}"/></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>


	<button id="iamport_module" type="button">결제하기</button>
</div>
</body>
</html>

