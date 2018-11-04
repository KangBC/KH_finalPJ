<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<div class="admin_box">
<fieldset ><legend><h1>GoodsApply</h1></legend>    
  <form id="goodsApplyForm" action="goodsApplyAf.do" enctype="multipart/form-data" method="post" onsubmit="return ckInput();">
    <table>
      <tr style="border-bottom: none;">
        <td>goods:</td> 
        <td>
          <select id="select_gCode" name="g_code" title="g_code">
            <c:forEach var="code" items="${codeList}">
	            <option>${code}</option>
            </c:forEach>
          </select>
        </td>
	  </tr>

      <tr style="border-bottom: none;">
        <td>제목:</td> 
        <td>
          <input name="title" title="제목" type="text">
        </td>
	  </tr>
	  
	  <tr style="border-bottom: none;">
	    <td>img:</td>
        <td><input name="sub_imgs" title="상품이미지" multiple="multiple" type="file"></td>
      <tr>
      
      <tr style="border-bottom: none;">
	    <td>내용:</td>
        <td><input name="content_img" title="내용" type="file"></td>
      <tr>
    </table>
	  <fieldset style="width:1000px; min-height: 300px;"><legend>내용 미리보기</legend>
 	  <img id="preview" alt="내용을 삽입해 주세요" src=""\ style="width: 100%; ">
	  </fieldset>
    <input type="submit" value="등록" title="submit">
  </form>
</fieldset>
<script type="text/javascript" src="resources/js/goodsApply.js"></script>
</div>