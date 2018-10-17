<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--Modal: modalPush-->
<div class="modal fade" id="modalPush" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-notify modal-info" role="document">
		<!--Content-->
		<div class="modal-content text-center">
			<!--Body-->
			<div class="modal-body">
				<i class="fa fa-bell fa-4x animated rotateIn mb-4"></i>
				<p>정말로 회원탈퇴를 진행하시겠습니까?</p>
			</div>

			<!--Footer-->
			<div style="padding: 10px">
				<a href="javascript:secessionAf()" class="btn btn-primary ">확인</a> <a
					type="button" class="btn btn-outline-primary waves-effect"
					data-dismiss="modal">취소</a>
			</div>
		</div>
		<!--/.Content-->
	</div>
</div>
<!--Modal: modalPush-->