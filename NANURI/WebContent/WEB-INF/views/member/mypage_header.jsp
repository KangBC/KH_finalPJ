<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="row"
	style="border-bottom: 2px solid #CCCCCC; padding-bottom: 20px; padding-top: 10px; height: 280px">
	<div class="col-md-4"
		style="background: url('https://user-images.githubusercontent.com/38531104/47497903-89990100-d896-11e8-9240-f9e028b6a85a.png');">
		<div class="row" style="margin-top: 10%">
			<div class="col-md-4">
				<img style="width: 100%" alt=""
					src="https://user-images.githubusercontent.com/38531104/47561767-2fac4000-d957-11e8-9c2b-41240c2e20ec.png">
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
				<p style="font-size: 40px; margin-bottom: 0px">${orderCnt}</p>
				<p style="margin-bottom: 0px">주문내역</p>
			</div>
			<div class="col-md-6" style="padding-left: 0px">
				<p style="font-size: 40px; margin-bottom: 0px">${wishCnt}</p>
				<p style="margin-bottom: 0px">장바구니</p>
			</div>
		</div>
	</div>
	<div class="col-md-4" align="center"
		style="background: url('https://user-images.githubusercontent.com/38531104/47497903-89990100-d896-11e8-9240-f9e028b6a85a.png');">

		<!-- 최근본상품 -->
		<div class="row" style="padding-left: 20%; padding-right: 20%">
			<div class="col-md-6"
				style="text-align: left; padding: 0px; padding-top: 15px">
				<p style="margin-bottom: 0px">ㆍ최근본상품</p>
			</div>
			<div class="col-md-6"
				style="text-align: right; padding: 0px; padding-top: 15px">
				<p style="margin-bottom: 0px">${fn:length(recentViewGoods)}개</p>
			</div>
		</div>
		<c:choose>
			<c:when test="${empty recentViewGoods}">
				<div class="row" style="width: 100%">
					<div align="center" style="width: 100%; margin-top: 20%">
						<a href="rentallist.do">[ 최근본 상품내역이 없습니다 ]</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<!-- GoodsImg -->
				<div class="row" style="width: 100%">
					<div class="col-md-3" style="padding-top: 18%">
						<a><i style="color: #542f82; font-size: 1.3em"
							class="fa fa-toggle-left" aria-hidden="true"></i></a>
					</div>
					<div class="col-md-6" align="center" style="width: 100%">
						<img style="max-width: 100%; height: auto;" alt=""
							src="http://i.011st.com/ex_t/R/400x400/1/85/0/src/pd/18/8/5/1/8/1/8/pSxxS/1440851818_B.jpg">
					</div>
					<div class="col-md-3" style="padding-top: 18%">
						<a><i style="color: #542f82; font-size: 1.3em"
							class="fa fa-toggle-right" aria-hidden="true"></i></a>
					</div>
				</div>
				<!-- GoodsTitle -->
				<div class="row"
					style="padding-left: 20%; padding-right: 20%; width: 100%;">
					<div align="center" style="width: 100%">
						<p style="font-size: 0.9em; margin: 0px">아디다스 유모차 EZK-990</p>
					</div>
				</div>
				<!-- GoodsPrice -->
				<div class="row"
					style="padding-left: 20%; padding-right: 20%; width: 100%;">
					<div align="center" style="width: 100%">
						<p style="font-size: 0.9em; margin: 0px">99,000원</p>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
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