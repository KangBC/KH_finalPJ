<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 


<h1>Stock</h1>
<div>
    <table>
    <colgroup>
      <col width="150px">
      <col width="150px">
      <col width="150px">
      <col width="150px">
      <col width="150px">
    </colgroup>
	<tr>
	  <td>상품코드</td>
  	  <td>상품명</td>
  	  <td>렌트 가격</td>
  	  <td>총 갯수</td>
  	  <td>대여 중인 갯수</td>
	</tr>
    <c:forEach var="goods" items="${goodsList}" varStatus="goodsS">
	  <tr>
	  	<td>${goods.g_code}</td>
	  	<td>${goods.g_name}</td>
	  	<td>${goods.g_price}</td>
	  	<td>${goods.g_quantity}</td>
	  	<td></td>
	  </tr>
    </c:forEach>
  </table>
  
<p>검색 결과 : ${fn:length(goodsList)} </p>
</div>