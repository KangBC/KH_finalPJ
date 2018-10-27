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
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="resources/js/order.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</head>
<body>

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
			
			<c:forEach var="item" items="${goodsList}" varStatus="status" >
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
	</div>
	<br>
	
	
	<div>
		<h3 style="display: inline;">배송지 정보 </h3> 
		<input id="a" type="checkbox"><label for="a">주문자와 동일</label><br>
		수령인 <input type="text"> <br>
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
			<br>
		주소<br>	
					<!-- Material input address -->
				<div >
					<input type="hidden" name="address" id="address" value="">
					
					<input type="text" id="address_num"
							name="address_num" placeholder="Address Number"
							readonly="readonly" >
					
					<button type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
					<br>
						<!-- address search button -->
					<input type="text" id="address_main"
						name="address_main" placeholder="Confirm your address"
						readonly="readonly" required>
					<input type="text" id="address_detail"
						name="address_detail" placeholder="Address Detail" required>
				</div>
		배송 메시지 <br>
		<input type="text" placeholder="택배 기사님께  전달할 배송메시지를  입력해주세요.">	
		<br>
		<br>
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
					<td>4000</td>
					<td><c:out value="${total+4000}"/></td>
				</tr>
			</tbody>
		</table>
		<button id="check_module" type="button">결제하기</button>
		</div>
	</div>
</div>
<script type="text/javascript">
$("document").ready(function() {
	$("#check_module").click(function () {
	    var IMP = window.IMP; // 생략가능
	    IMP.init('iamport'); 
	    IMP.request_pay({
	        pg: 'inicis', // version 1.1.0부터 지원.
	        pay_method: 'card',
	        merchant_uid: 'merchant_' + new Date().getTime(),
	        //   https://docs.iamport.kr/implementation/payment
	        name: '주문명:결제테스트',
	        //결제창에서 보여질 이름
	        amount: <c:out value="${total+4000}"/>, 
	        //가격 
	        buyer_email: '${member.email}',
	        buyer_name: '${member.name}',
	        buyer_tel: '${member.phone}',
	        buyer_addr: '서울특별시 강남구 삼성동',
	        buyer_postcode: '123-456',
	    }, function (rsp) {
	        console.log(rsp);
	        if (rsp.success) {
	            var msg = '결제가 완료되었습니다.';
	            msg += '고유ID : ' + rsp.imp_uid;
	            msg += '상점 거래ID : ' + rsp.merchant_uid;
	            msg += '결제 금액 : ' + rsp.paid_amount;
	            msg += '카드 승인번호 : ' + rsp.apply_num;
	        } else {
	            var msg = '결제에 실패하였습니다.';
	            msg += '에러내용 : ' + rsp.error_msg;
	        }
	        alert(msg);
	    });
	});
});
</script>

</body>
</html>

