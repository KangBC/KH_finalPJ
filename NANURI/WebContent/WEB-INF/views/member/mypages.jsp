<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="row">
					<h1>마이페이지</h1>
				</div>
				<div class="row"
					style="border-bottom: 2px solid; padding-bottom: 20px; padding-top: 10px">
					<div class="col-md-4" align="center">
						<div
							style="border-radius: 50%; height: 240px; width: 240px; box-shadow: 2px 2px 15px grey;">
							<p
								style="padding-top: 60px; font-size: 60px; font-weight: blod; margin: 0px">0</p>
							<p>주문내역</p>
						</div>
					</div>
					<div class="col-md-4" align="center">
						<div
							style="border-radius: 50%; height: 240px; width: 240px; box-shadow: 2px 2px 15px grey;">
							<p
								style="padding-top: 60px; font-size: 60px; font-weight: blod; margin: 0px">0</p>
							<p>장바구니</p>
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