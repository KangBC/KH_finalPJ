<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>


<body>
<div align="center">
<form name="frmForm" id="_frmForm" action="pdsupload.do" method="post" enctype="multipart/form-data">
<table>

<colgroup>
<col style="width:200px;" />
<col style="width:auto;" />
</colgroup>

<tr>
	<th>아이디</th>
	<td>
		<input type="text" name="id" readonly="readonly" value="아이디" size="50">
	</td>
</tr>

<tr>
	<th>제목</th>
	<td>
		<input type="text" name='title' size="50"/>
	</td>
</tr>

<tr>
	<th>파일업로드</th>
	<td>
		<input type="file" name="fileload" style=" width : 400px;">
	</td>
</tr>

<tr>
	<th>내용</th>
	<td>
		<textarea rows="10" cols="50" name='content' id="_content"></textarea>
	</td>
</tr>

<tr>
	<td colspan="2" style="height:50px; text-align:center;">
		<span>
			<a href="#none" id="_btnLogin" title="글쓰기">글쓰기</a>
		</span>
	</td>
</tr>

</table>
</form>
</div>

<script type="text/javascript">
$("#_btnLogin").click(function() {	
	alert('글쓰기');	
	$("#_frmForm").submit();	
});

</script>


</body>
</html>