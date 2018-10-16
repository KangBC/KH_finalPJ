<%@page import="com.kh.finalPJ.member.memberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%memberDto mem = (memberDto) session.getAttribute("login"); %>

<div class="head">
	<ul>
		<li><a href="main.do">메인</a></li>
		<li><a href="rentallist.do">렌탈</a></li>
		<li><a href="qnalist.do">QnA</a></li>
		<li><a href="login.do">로그인</a></li>
		<li><a href="regi.do">회원가입</a></li>
		<li><a href="logout.do">로그아웃</a></li>
		<li><a href="mypage.do">마이페이지</a></li>
		<li><a href="reviewlist.do">후기</a></li>
		<li><a href="admin.do">관리자</a></li>
	</ul>

</div>