function deletechecks(e) {
	var x = document.getElementsByName("delck");
	var len = x.length;

	for (i = 0; i < len; i++) {
		x[i].checked = e;
	}
}

function rentalListDel(seq) {
	var x = document.getElementsByName("delck");
	var len = x.length;
	
	var delList = "";
	
	if(len == 1){
		alert("선택된 상품이 없습니다.");
		return;
	}
	if (seq != -1) {
		delList = seq + "-end";
	} else {
		for (i = 0; i < len; i++) {
			if (x[i].checked == true && x[i].value != "on"
					&& x[i].value != "off") {
				if (i == len - 1) {
					delList = delList + x[i].value.trim();
				} else {
					delList = delList + x[i].value.trim() + "-";
				}
			}
		}
	}

	$.ajax({
		dataType : 'json',
		url : "rentalListDel.do",
		type : "POST",
		data : "delList=" + delList,
		async : true,
		success : function(data) {
			if (data.cnt > 0) {
				location.href = 'rentalList.do';
			} else {
				alert("rentalListDel : error");
				return;
			}
		},
		error : function(xhr, status) {
			alert(xhr + " : " + status);
		}
	});
}