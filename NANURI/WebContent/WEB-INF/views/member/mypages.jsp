<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NANURI</title>
</head>
<body>
	<div class="startdiv">
		<div class="row">
			<div style="width: 1100px;">
				<!-- Main Header -->
				<div class="row"
					style="border-bottom: 2px solid; padding-bottom: 20px; padding-top: 10px">
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
										<font style="font-weight: bold; font-size: 30px"
											color="#542f82">'${login.name }'</font>님 환영합니다!
									</p>
								</div>
								<div style="border: solid 1px; text-align: center; padding: 2px">
									<a href="rentallist.do"><i class="fa fa-shopping-cart"
										aria-hidden="true"></i> 상품렌트하러 가기 >></a>
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
					<div class="col-md-4" style="padding-top: 15px">
						<p style="text-align: right;">
							<a href="main.do">메인</a> > <a href="mypage.do">마이페이지</a>
						</p>
						<p>
							-배송관련 문의<br>-상품관련 문의<br>-결제 및 반납문의
						</p>
						<a href="qnalist.do"> <img alt=""
							src="https://user-images.githubusercontent.com/38531104/47474722-40738d80-d853-11e8-9c64-ce6c3475b328.PNG">
						</a>
					</div>
				</div>
				<!-- / Main Header -->
				<!-- Main View -->
				<div class="row" style="margin-top: 20px">
					<!-- 주문내역 -->
					<div class="col-md-4">
						<a href="rentalList.do">
							<div style="border: solid 1px; padding: 15%; height: 292px">
								<div class="row"
									style="margin-left: 10%; margin-right: 10%; border-bottom: solid 2px gray; text-align: center;">
									<p style="width: 100%; font-weight: bold; font-size: 20px;">ORDER</p>
								</div>
								<div class="row"
									style="margin-top: 15%; margin-bottom: 10%; text-align: center;">
									<p style="width: 100%; font-size: 14px; font: gray">
										고객님께서<br>주문하신 상품의<br>주문내역을 확인하실 수 있습니다.<br>(
										후기등록ㆍ내역확인 )
									</p>
								</div>
							</div>
						</a>
					</div>
					<!-- / 주문내역 -->
					<!-- 장바구니 -->
					<div class="col-md-4">
						<a href="basketList.do">
							<div style="border: solid 1px; padding: 15%;">
								<div class="row"
									style="margin-left: 10%; margin-right: 10%; border-bottom: solid 2px gray; text-align: center;">
									<p style="width: 100%; font-weight: bold; font-size: 20px;">WISH
										LIST</p>
								</div>
								<div class="row"
									style="margin-top: 15%; margin-bottom: 10%; text-align: center;">
									<p style="width: 100%; font-size: 14px; font: gray">
										장바구니에 등록하신<br>상품의 목록을 보여드립니다<br>( 목록확인ㆍ구매 및 삭제 )
									</p>
								</div>
							</div>
						</a>
					</div>
					<!-- / 장바구니 -->
					<!-- 회원관리 -->
					<div class="col-md-4">
						<a href="userUpdate.do">
							<div style="border: solid 1px; padding: 15%;">
								<div class="row"
									style="margin-left: 10%; margin-right: 10%; border-bottom: solid 2px gray; text-align: center;">
									<p style="width: 100%; font-weight: bold; font-size: 20px;">MY
										INFO</p>
								</div>
								<div class="row"
									style="margin-top: 15%; margin-bottom: 10%; text-align: center;">
									<p style="width: 100%; font-size: 14px; font: gray">
										회원이신 고객님의<br> 개인정보를 관리하는 공간입니다.<br>( 정보수정ㆍ회원탈퇴 )
									</p>
								</div>
							</div>
						</a>
					</div>
					<!-- / 회원관리 -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>