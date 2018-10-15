<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 


<h1>탈퇴승인</h1>
<div>
  <table>
    <colgroup>
      <col width="150px">
      <col width="150px">
      <col width="150px">
      <col width="200px">
      <col width="200px">
      <col width="400px">
    </colgroup>
	<tr>
	  <td>ID</td>
  	  <td>REASON</td>
  	  <td>탈퇴 신청</td>
  	  <td>탈퇴 수행</td>
  	  <td>상태</td>
	</tr>
    <c:forEach var="member" items="${sececssionList}" varStatus="memberS">
	  <tr>
	  	<td>${member.id}</td>
	  	<td>${member.reason}</td>
	  	<td>${member.sdate}</td>
	  	<td>${member.edate}</td>
	  	<td>${member.status}</td>
	  </tr>
    </c:forEach>
  </table>
  
  <p>검색 결과 : ${fn:length(secessionList)} </p>
</div>