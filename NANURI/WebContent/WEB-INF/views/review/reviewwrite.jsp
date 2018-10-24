<%@page import="com.kh.finalPJ.review.reviewDto"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<script type="text/javascript" src="./smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<body>

<div align="center">
<form name="frmForm" id="_frmForm" action="reviewwriteAf.do" method="post">
<table>

<colgroup>
<col style="width:200px;" />
<col style="width:auto;" />
</colgroup>

<tr>
	<th>아이디</th>
	<td>
		<input type="text" name="id" readonly="readonly" value="${login.id }" size="50">
	</td>
</tr>

<tr>
	<th>제목</th>
	<td>
		<input type="text" name='title' id="title" size="50"/>
	</td>
</tr>
<!-- =======별이다======= -->
<tr>
	<th>별점</th>
	<td class="starRev">
 		 <span class="starR1">1</span>
 		 <span class="starR2">2</span>
 		 <span class="starR1">3</span>
 		 <span class="starR2">4</span>
 		 <span class="starR1">5</span>
 		 <span class="starR2">6</span>
 		 <span class="starR1">7</span>
		 <span class="starR2">8</span>
 		 <span class="starR1">9</span>
 		 <span class="starR2">10</span>
 		 <h5 id="grade">&nbsp;&nbsp;0</h5>
	</td>
<tr>
<input type="hidden" name="rating" id="rating" value="0">
</table>

<!-- 스마트에디터 & 확인 취소버튼 -->
<table style="margin-top: 10px; background-color:white;">
	<col style="width: 100px"><col style="width: 1000px">
     
<tr>
	<td colspan="2">
		<textarea style="height: 600px; width: 1000px" name="content" id="content"></textarea>      
	</td>
        
</tr>
<tr style="height: 30px" align="center">
	<td colspan="2">
    	<input type="button" value="완료" id="savebutton">
    	
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	
        <input type="button" value="취소" onclick="location.href='reviewlist.do'">
    </td>
</tr>
</table>

</form>
</div>


<script type="text/javascript">
var oEditors = [];

//별점
var grade = 0;

// 추가 글꼴 목록
//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
$(function() {
	nhn.husky.EZCreator.createInIFrame({
   	oAppRef : oEditors,
   	elPlaceHolder : "content",
   	sSkinURI : "smarteditor/SmartEditor2Skin.html",
   	htParams : {
    	bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
    	bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
     	bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
    	//bSkipXssFilter : true,      // client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
    	//aAdditionalFontList : aAdditionalFontSet,      // 추가 글꼴 목록
    fOnBeforeUnload : function() {
    	//alert("완료!");
    	}
    }, 
    //boolean
    fOnAppLoad : function() {
    	//예제 코드
    	//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
    	//아래는 선생님코드
    	//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
		oEditors.getById["content"].exec("PASTE_HTML", [""]);
   },
   	fCreator : "createSEditor2"
	});
});

$(document).ready(function () {
	$("#savebutton").click(function(){ 
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
	$("#_frmForm").submit();
	})	
})

/* 별점작동 */
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  
	  grade = $(this).text();
	  $("#grade").html("&nbsp;&nbsp;" + $(this).text());
	  
	  $("#rating").val(grade);
	  //alert(grade);
	  
	  return false;
});
</script>

</body>
</html>