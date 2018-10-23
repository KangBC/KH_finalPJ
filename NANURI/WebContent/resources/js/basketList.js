// Parameter e == true or false
function deletechecks(e) {
	var x = document.getElementsByName("delck");
	var len = x.length;

	for (i = 0; i < len; i++) {
		x[i].checked = e;
	}

	totalPrice();
}

function basketListDel(seq) {
	var x = document.getElementsByName("delck");
	var len = x.length;

	var delList = "";

	if (seq != -1) {
		delList = seq + "-end";
	} else {
		for (i = 0; i < len; i++) {
			if (x[i].checked == true && x[i].value != "on"
					&& x[i].value != "off") {
				if (i == len - 1) {
					totalPrice = totalPrice + x[i].value.trim();
				} else {
					totalPrice = totalPrice + x[i].value.trim() + "-";
				}
			}
		}
	}

	$.ajax({
		dataType : 'json',
		url : "basketListDel.do",
		type : "POST",
		data : "delList=" + delList,
		async : true,
		success : function(data) {
			if (data.cnt > 0) {
				location.href = 'basketList.do';
			} else {
				alert("basketListDel : error");
				return;
			}
		},
		error : function(xhr, status) {
			alert(xhr + " : " + status);
		}
	});
}

function totalPrice() {
	var total_price = 0;
	var x = document.getElementsByName("delck");
	var len = x.length;

	var count = 0;

	var totalPrice = "";

	for (i = 0; i < len; i++) {
		if (x[i].checked == true && x[i].value != "on" && x[i].value != "off") {
			totalPrice = totalPrice + x[i].value.trim() + "-";
			count++;
		}
	}

	if (count == 0) {
		$("#g_price").text("0원");
		$("#d_cost").text("0원");
		$("#total_price").text("0원");
		return;
	}

	$.ajax({
		dataType : 'json',
		url : "getTotalPrice.do",
		type : "POST",
		data : "totalPrice=" + totalPrice,
		async : true,
		success : function(data) {
			if (data.total > 0) {
				total_price = data.total + 4000;
				$("#g_price").text(numberWithCommas(data.total) + "원");
				$("#d_cost").text(numberWithCommas(4000) + "원");
				$("#total_price").text(numberWithCommas(total_price) + "원");
			} else {
				alert("totalPrice : error");
				return;
			}
		},
		error : function(xhr, status) {
			alert(xhr + " : " + status);
		}
	});
}
function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}