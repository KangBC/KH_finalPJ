$("document").ready(function() {
	var g_code;
	var changeBf;
	var changeAf;
	var change;
	
	$("input[name=change_imgF]").change(function(event) {
		var file = event.target.files[0];

		var formData = new FormData();
		formData.append("g_code",event.target.parentNode.parentNode.parentNode.children[0].innerHTML);
        formData.append("g_imgF",file);
       
        $.ajax({
           url: 'changeFile.do',
           processData: false,
           contentType: false,
           data: formData,
           type: 'POST',
           success : function(data) {
			if(data!="false"){
				event.target.parentNode.parentNode.innerHTML=data;
				alert("성공");
			}else{
				alert("실패");
			}
		   },
		   error : function(xhr, status) {
			alert(xhr + " : " + status)
		}
       });
	});
	
	// 엔터 입력시 포커스 해제
	$("td").keypress(function(event) {
		if(event.keyCode==13){
			event.preventDefault();
			event.target.blur();
		}
	});
	
	// 여기부터 테이블 변경값 저장 및 전송
	$(".stock_col td").focus(function(event){
		g_code=event.target.parentNode.children[0].innerHTML;
		changeBf = event.target.innerHTML;
	});
	
	$(".stock_col td").blur(function(event){
	  changeAf=event.target.innerHTML;
	  changeAf=changeAf.replace("&nbsp;","");
	  changeAf=changeAf.replace("<br>","");
	  
	  
	  if(!(changeAf==changeBf)){
		  $.each(event.target.parentNode.childNodes,function(index,item){
			  if(event.target==item){
				  change=event.target.id;
			  }
		  })
	  	  
		  var data = {"g_code":g_code,"changeAf":changeAf,"change":change};
		  
		  $.ajax({
			url : "stockUpdate.do",
			type : "POST",
			dataType : 'json',
			data : JSON.stringify(data),
			contentType:'application/json; charset=utf-8',
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

function ckInput() {
	var inputObjs = $("#stockform input");
	var bEmpty = true;
	var focus;
	
	 inputObjs.each(function(index) {
	        if ($(this).val() == '') {
	            focus = $(this);
	            bEmpty = false;
	 
	            alert($(this).attr('title') + "은(는) 필수 입력사항입니다.");
	            focus.focus();
	 
	            // 여기서는 each문을 탈출
	            return false;
	        }
	    });
	 
	    // 필수입력사항에 누락이 있으면 진행금지
	if (!bEmpty) return false;
	 
	return true;
}

