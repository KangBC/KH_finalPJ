function searchId() {
	alert("아이디를 왜 까먹고그래..시간이없어서 못 했어");
}

function searchPwd() {
	alert("비밀번호를 왜 까먹고그래..시간이없어서 못 했어");
}

function loginAf() {

	var id = $("#id").val();
	var pwd = $("#pwd").val();

	if (id == null || id == "") {
		alert("아이디를 입력하세요");
		return;
	} else if (pwd == null || pwd == "") {
		alert("패스워를 입력하세요");
		return;
	}

	var data = {
		id : id.trim(),
		pwd : pwd.trim(),
	};

	$.ajax({
		dataType : 'json',
		url : "loginAf.do",
		type : "POST",
		data : data,
		async : true,
		success : function(data) {
			if (data.cnt > 0) {
				location.href = 'main.do';
			} else {
				alert("탈퇴처리된 아이디나 존재하지 않는 아이디입니다.");
				location.href = 'login.do';
				return;
			}
		},
		error : function(xhr, status) {
			alert(xhr + " : " + status);
		}
	});
}