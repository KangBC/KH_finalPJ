<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<div class="admin_box">


<fieldset><legend><h1>Stock</h1></legend>

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
	  <tr class="stock_col">
	  	<td contenteditable="true">${goods.g_code}</td>
	  	<td contenteditable="true">${goods.g_name}</td>
	  	<td contenteditable="true">${goods.g_price}</td>
	  	<td contenteditable="true">${goods.g_quantity}</td>
	  	<td contenteditable="false"></td>
	  </tr>
    </c:forEach>
  </table>
  <br>
  
  <form action="goodsRegist.do">
  <table>
    <colgroup>
      <col width="150px">
      <col width="150px">
      <col width="150px">
      <col width="150px">
      <col width="150px">
    </colgroup>
    <tr>
	  <td><input name="g_code" type="text" style="width: 150px"></td>
	  <td><input name="g_name" type="text" style="width: 150px"></td>
	  <td><input name="g_quantity" type="text" style="width: 150px"></td>
  	  <td></td>
  	  <td></td>
  	  <td><button>상품 추가</button></td>
	</tr>
  </table>
  </form>
  
<p>검색 결과 : ${fn:length(goodsList)} </p>
</div>
<script>
$("document").ready(function() {
	var g_code;
	var changeBf;
	var changeAf;
	var change;
	
	$("td").keypress(function(event) {
		if(event.keyCode==13){
			event.preventDefault();
			event.target.nextSibling.nextSibling.focus();
		}
	});
	
	$(".stock_col td").focus(function(event){
		g_code=event.target.parentNode.children[0].innerHTML;
		changeBf = event.target.innerHTML;
	});
	
	$(".stock_col td").blur(function(event){
	  changeAf=event.target.innerHTML;
	  changeAf=changeAf.replace("&nbsp;","");
	  
	  if(!(changeAf==changeBf)){
		  $.each(event.target.parentNode.childNodes,function(index,item){
			  if(event.target==item){
				  change=index;
			  }
		  })
		  
		  $.ajax({
			url : "stockUpdate.do",
			type : "GET",
			data : {"g_code" : g_code, "change" : change, "changeAf" : changeAf},
			success : function(data) {
				if(data){
					alert("성공")
				}else{
					alert("실패")
				}
			},
			error : function(xhr, status) {
				alert(xhr + " : " + status)
			}
		  })
	  }
	})
});
</script>
</fieldset>

</div>
