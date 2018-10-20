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