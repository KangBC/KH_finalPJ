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
      <col width="200px">
      <col width="200px">
      <col width="250px">
      <col width="100px">
    </colgroup>
	<tr>
	  <td>ID</td>
  	  <td>REASON</td>
  	  <td>탈퇴 신청</td>
  	  <td>탈퇴 수행</td>
  	  <td>상태</td>
  	  <td>탈퇴 승인</td>
  	  
	</tr>
    <c:forEach var="sececssion" items="${sececssionList}" varStatus="sececssionS">
	  <tr>
	  	<td>${sececssion.del_id}</td>
	  	<td>${sececssion.del_reason}</td>
	  	<td>${sececssion.del_sdate.toString().substring(0,16)}</td>
	  	<td>${sececssion.del_edate.toString().substring(0,16)}</td>
	  	<td>${sececssion.status}</td>
	  	<td><button onclick="">승인</button></td>
	  </tr>
    </c:forEach>
  </table>
  
  <p>검색 결과 : ${fn:length(secessionList)} </p>
</div>