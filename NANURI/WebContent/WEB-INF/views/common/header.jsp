<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="head">
	<div class="row" style="width: 100%">
		<div class="col-md-6" style="text-align: left;">
			<ul>
				<li><a href="main.do">HOME</a></li>
				<li><a href="rentallist.do">렌탈</a></li>
				<li><a href="qnalist.do">Q&A게시판</a></li>
				<li><a href="reviewlist.do">후기게시판</a></li>
			</ul>
		</div>
		<div class="col-md-6" style="text-align: right;">
			<ul>
				<c:choose>
					<c:when test="${login.auth eq 0}">
						<li class="my"><a href="mypage.do">마이페이지</a></li>
						<li><a href="logout.do">로그아웃</a></li>
					</c:when>
					<c:when test="${login.auth eq 2}">
						<li class="my"><a href="admin.do">관리자</a></li>
						<li><a href="logout.do">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login.do">로그인</a></li>
						<li><a href="regi.do">회원가입</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</div>