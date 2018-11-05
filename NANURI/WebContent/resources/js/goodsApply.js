$("document").ready(function() {
	$("input[name=content_img]").change(function(event) {
		var filesArr = Array.prototype.slice.call(event.target.files);
		
		filesArr.forEach(function(f){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#preview").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
	});
});


function ckInput() {
	var inputObjs = $("#goodsApplyForm input");
	var bEmpty = true;
	var focus;
	
	if($("#select_gCode").val()==null){
		alert("등록 가능한 상품이 없습니다.");
		return false;
	}
	
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
