<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />

<div class="modal fade" id="viewModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- modal header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- / modal header -->
			<!-- modal body -->
			<input type="hidden" id="g_code" name="g_code" />
			<form name="frmForm" class="_frmForm" id="_frmForm" method="post"
				action="reviewdetail.do">
				<input type="hidden" id="seq" name="seq" />
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<img id="g_img" alt="" src="" style="width: 100%">
						</div>
						<div class="col-md-8">
							<input type="hidden" name="_rating" id="_rating" />
							<div class="row">
								<div id="modal_wdate"
									style="width: 100%; margin-left: 10%; margin-right: 10%; text-align: right;"></div>
							</div>
							<div id="starRev" class="starRev"></div>
							<div
								style="text-overflow: ellipsis; overflow: hidden; padding-top: 7px; margin-bottom: 5px">
								<nobr id="modal_id" style="font-size: 0.9em; color: #CCCCCC;">
								</nobr>
							</div>
							<div
								style="width: 100%; text-overflow: ellipsis; overflow: hidden;">
								<nobr id="modal_title"></nobr>
							</div>
						</div>
					</div>
					<div id="content"
						style="height: 350px; padding: 5%; border: 2px solid #542f82; margin-top: 10px; overflow: scroll; overflow-x: hidden"></div>
				</div>
				<!-- / modal body -->
				<!-- modal footer -->
				<div id="modal_footer" class="modal-footer" style="float: center">
				</div>
			</form>
			<!-- / modal footer -->
		</div>
	</div>
</div>
<script type="text/javascript">
	function goodsdetail() {
		location.href="goodsdetail.do?g_code="+$("#g_code").val()+"&seq="+$("#seq").val();
	}
	function deletereview(seq) {
		location.href ='deleterev.do?seq='+$("#seq").val();
	}
</script>