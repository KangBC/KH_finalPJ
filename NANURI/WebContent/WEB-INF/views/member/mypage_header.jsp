<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row"
	style="border-bottom: 2px solid #CCCCCC; padding-bottom: 20px; padding-top: 10px; height: 280px">
	<div class="col-md-4" align="center" style="border: solid 1px">
		<h1>개발중(슬라이더 어떰? - 추천상품같은)</h1>
	</div>
	<div class="col-md-4"
		style="background: url('https://user-images.githubusercontent.com/38531104/47497903-89990100-d896-11e8-9240-f9e028b6a85a.png');">
		<div class="row" style="margin-top: 10%">
			<div class="col-md-4" style="border: solid 1px">
				<h1>Logo</h1>
			</div>
			<div class="col-md-8">
				<div>
					<p style="margin-bottom: 0px">
						<font style="font-weight: bold; font-size: 30px" color="#542f82">'${login.name }'</font><br>
						님 환영합니다!
					</p>
				</div>
				<div style="border: solid 1px; text-align: center; padding: 2px">
					<a href="rentallist.do"><i class="fa fa-shopping-cart"
						aria-hidden="true"></i> 쇼핑하러 가기 >></a>
				</div>
			</div>
		</div>
		<div class="row" align="center">
			<div class="col-md-6" style="padding-right: 0px">
				<p style="font-size: 40px;">${orderCnt}</p>
				<p style="margin-bottom: 0px">주문내역</p>
			</div>
			<div class="col-md-6" style="padding-left: 0px">
				<p style="font-size: 40px;">${wishCnt}</p>
				<p style="margin-bottom: 0px">장바구니</p>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<a href="qnalist.do"> <img style="width: 100%; height: auto"
			alt=""
			src="https://user-images.githubusercontent.com/38531104/47474722-40738d80-d853-11e8-9c64-ce6c3475b328.PNG">
		</a>
		<div style="padding-top: 10px; border-top: solid 1px #CCCCCC;">
			<table style="text-align: left; width: 100%;">
				<colgroup>
					<col width="15%">
					<col width="85%">
				</colgroup>
				<tbody>
					<c:choose>
						<c:when test="${empty qaList}">
							<tr>
								<td colspan="2" style="text-align: center; padding: 10%">등록된
									공지글이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${qaList}" var="qaList" varStatus="status">
								<tr>
									<th>[공지]</th>
									<th><a href="qnalist.do">${qaList.title}</a></th>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
</div>