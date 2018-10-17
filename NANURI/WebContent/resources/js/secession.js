function secessionAf() {
	
	var del_id = $("#del_id").val();
	var del_reason = $("#del_reason").val();
	
	if (del_reason == null || del_reason == "") {
		alert("탈퇴사유를 입력하세요");
		return;
	}
	
	var data = {
			del_id : del_id,
			del_reason : del_reason,
		};

		$.ajax({
			dataType : 'json',
			url : "regiAf.do",
			type : "POST",
			data : data,
			async : true,
			success : function(data) {
				if (data.cnt > 0) {
					alert("회원가입에 성공하였습니다");
					location.href = 'login.do';
				} else {
					alert("regi : error");
					location.href = 'login.do';
				}
			},
			error : function(xhr, status) {
				alert(xhr + " : " + status);
			}
		});
}