<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NANURI</title>
</head>
<body>
	<!-- startdiv -->
	<div class="startdiv">
		<!-- layout_border -->
		<div class="row">

			<!-- left bar -->
			<div style="width: 220px;">
				<div style="margin-top: 70px; border: 1px solid; margin-right: 30px">
					<jsp:include page="mypage_leftbar.jsp" />
				</div>
			</div>
			<!-- / left bar -->

			<!-- main content -->
			<div style="width: 880px;">

				<!-- main head -->
				<div class="row"
					style="border-bottom: 3px solid; padding-bottom: 10px">
					<div class="col-md-8">
						<h1>장바구니 목록</h1>
					</div>
					<div class="col-md-4" style="text-align: right; padding-top: 15px">
						<a href="main.do">메인</a> > <a href="mypage.do">마이페이지</a> > <a
							href="basketList.do">장바구니 목록</a>
					</div>
				</div>

				<!-- main view -->
				<div></div>
				<!-- / main view -->
			</div>
			<!-- / main content -->
		</div>
		<!-- / layout_border -->
	</div>
	<!-- / startdiv -->
</body>
</html>

<div class="CartTable1_Wrap" id="cartTable_area">
	<table summary="장바구니 상품의 옵션정보, 수량과 금액, 할인금액과 할인적용금액 및 배송비 속성">
		<caption>장바구니 상품목록</caption>
		<colgroup>
			<col style="width: 33px;">
			<col style="width: 409px;">
			<col style="width: 60px;">
			<col style="width: 95px;">
			<col style="width: 115px;">
			<col style="width: 100px;">
			<col style="width: 89px;">
			<col style="width: 79px;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" class="chk" data-log-actionid-area="title"
					data-is-ab-send="1"><label for="bcktSeq_All"
					data-log-actionid-label="all_check"><input
						name="bcktSeq_All" type="checkbox" value="" id="bcktSeq_All"
						onclick="allCheckAction(this); chkBox(this);" title="전체상품선택"
						data-log-body="{&quot;check_value&quot;:true}"></label></th>
				<th scope="col">상품/옵션정보</th>
				<th scope="col">수량</th>
				<!-- [14-08-06 jsshin : order] 상품삭제 -->
				<th scope="col">상품금액</th>
				<th scope="col" class="thtype2">할인금액</th>
				<th scope="col" class="thtype2">할인적용금액</th>
				<th scope="col">배송비</th>
				<th scope="col">주문</th>
			</tr>
		</thead>

		<tbody>
			<!-- 상품리스트  start -->



			<tr>
				<td class="chk" data-log-actionid-area="product" data-is-ab-send="1">
					<!-- 체크박스(묶음상품) --> <label for="1923443424"
					data-log-actionid-label="product_check"> <input
						type="checkbox" name="bcktSeq_B_0" value="1812920309"
						id="1923443424" onclick="checkFuncCalReset(); chkBox(this);"
						data-log-body="{&quot;check_value&quot;:&quot;&quot;, &quot;product_check_index&quot;:&quot;1&quot;, &quot;basket_sequence&quot;:&quot;1812920309&quot;}">
				</label> <input type="hidden" name="bckt_prd_1812920309" value="0">
					<input type="hidden" id="product_1812920309"
					name="product_1812920309" value="1923443424"> <input
					type="hidden" name="cartJoinList_0" value="1"> <input
					type="hidden" name="gblDlvYn_1812920309" id="gblDlvYn_1812920309"
					value="N"> <input type="hidden"
					name="minorSelCnYn_1812920309" id="minorSelCnYn_1812920309"
					value="Y"> <input type="hidden" id="productNm_1812920309"
					name="productNm_1812920309"
					value="(102만구매+CPU업)LG14ZD980-MX30K 올뉴그램 노트북"> <input
					type="hidden" id="agreeOrderMakePrdYN_1812920309"
					name="agreeOrderMakePrdYN_1812920309" value="Y"> <input
					type="hidden" id="sDispCtgrNo_1812920309" name="sCtgrNo_1812920309"
					value="1011589"> <input type="hidden"
					id="prdTypCd_1812920309" name="prdTypCd_1812920309" value="01">
					<input type="hidden" id="changeCupnYN_1812920309"
					name="changeCupnYN_1812920309" value="Y"> <input
					type="hidden" id="cultureIncomeDeductionYn_1812920309"
					name="cultureIncomeDeductionYn_1812920309" value="N">



				</td>
				<td class="td_prdwrap" data-log-actionid-area="product">
					<div class="OrderPrdW_Goods">
						<div class="dp_photo">
							<a
								href="javascript:funcGoUrlAdults('http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&amp;prdNo=1923443424&amp;xzone=cart^list&amp;xfrom=cart^list&amp;bcktType=01', 'Y', 'N');"
								onclick="doCommonStat('SCLT001');"
								data-log-actionid-label="image"
								data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}">
								<img
								src="http://i.011st.com/ex_t/R/90x90/1/85/1/src/pd/18/4/4/3/4/2/4/Imiul/1923443424_L300.jpg"
								width="90" height="90" alt="상품이미지"
								onerror="javascript:this.src='http://i.011st.com/ex_t/R/90x90/1/85/1/src/img/product/no_image.gif';">
							</a>
							<div class="wayView">
								<a
									href="javascript:funcGoUrlAdults('http://www.11st.co.kr/browsing/PreviewPop.tmall?orderPage=YES&amp;method=getPreviewPop&amp;prdNo=1923443424','Y', 'Y');"
									class="pre_sview" onclick="doCommonStat('SCLT002');"
									data-log-actionid-label="preview"
									data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"><span>미리보기</span></a>
								<a
									href="javascript:funcGoUrlAdults('http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&amp;prdNo=1923443424&amp;xzone=cart^list&amp;xfrom=cart^list&amp;bcktType=01', 'Y', 'X');"
									class="pre_bview" onclick="doCommonStat('SCLT003');"
									data-log-actionid-label="new_window_view"
									data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"><span>새창보기</span></a>
							</div>
						</div>
						<div class="infoWrap">

							<div class="pup_info">

								<span class="prdico lowest">최저가보상</span>

							</div>

							<div class="dp_title">

								<label for="1923443424"> <a
									href="javascript:funcGoUrlAdults('http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&amp;prdNo=1923443424&amp;xzone=cart^list&amp;xfrom=cart^list&amp;bcktType=01', 'Y', 'N');"
									onclick="doCommonStat('SCLT004');">
										(102만구매+CPU업)LG14ZD980-MX30K 올뉴그램 노트북 </a>
								</label>

							</div>
							<div class="PrdaddSetWrap">
								<div class="OptionWrap">
									<ul>
										<li>무선마우스+키스킨+패드 / 1.램8G기본형 / 1.기본 M2 128G / 1개</li>

										<input type="hidden" id="entTypOptNmArr_1812920309"
											name="entTypOptNmArr_1812920309" value="">
									</ul>
								</div>


								<!-- 추가 구성 상품 시작 -->


								<!-- 추가 구성 상품 끝 -->
							</div>
							<!-- PrdaddSetWrap -->
							<div class="prd_info_box"></div>
							<!-- end of prd_info_box -->

							<a href="javascript:funcOptQtyChangePopup(1812920309,-10000,1)"
								class="defbtn_xsm dtype7" onclick="doCommonStat('SCLT005');"
								data-log-actionid-label="option_change"
								data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"><span>옵션변경/추가</span></a>


						</div>
						<!-- infoWrap -->


					</div> <!-- OrderPrdW_Goods -->
				</td>
				<td data-log-actionid-area="product">
					<div class="OrderPrdW_numSet">

						<label for="cnt_1812920309"><input
							name="ordSlctQty_B_1812920309" id="cnt_1812920309" type="text"
							value="1" maxlength="5"
							onclick="javascript:doCommonStat('SCLT006');funcOptQtyChangePopup(1812920309,-10000,1,0); rakeLog.sendRakeLog(this);"
							data-log-actionid-label="option_product_quantity_input"
							data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"></label>
						<button type="button" class="defbtn_sm dtype7"
							onclick="javascript:doCommonStat('SCLT006');funcOptQtyChangePopup(1812920309,-10000,1,0);"
							data-log-actionid-label="option_product_quantity_change"
							data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}">
							<span>변경</span>
						</button>


					</div> <input type="hidden" name="checkQty_1812920309" value="1">
					<input type="hidden" name="limitQty_1812920309" value="-10000">
					<input type="hidden" name="minQty_1812920309" value="0">
				</td>
				<td class="prd_price">1,146,310원</td>
				<td class="sale_price" data-log-actionid-area="product">
					<div class="sale_price">
						<div>

							<span>57,310원

								<button type="button" class="defbtn_arrdown2"
									onmouseover="layerView('Lyer_BunchJoinList_1'); rakeLog.sendRakeLog(this);"
									onmouseout="layerHidden('Lyer_BunchJoinList_1');"
									data-log-actionid-label="discount_price_view"
									data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}">할인정보
									보기</button>


							</span>

							<!-- 레이어 -->

							<div class="layer_def_b" id="Lyer_BunchJoinList_1"
								onmouseover="layerView('Lyer_BunchJoinList_1');"
								onmouseout="layerHidden('Lyer_BunchJoinList_1');">
								<ul class="sale_list">


									<li><span>즉시할인</span>57,310원</li>






								</ul>
								<em><span>총 할인금액</span>57,310원</em>
							</div>
							<!-- layer_def_b -->
							<!-- 레이어 End -->

						</div>
						<!-- none -->
						<!--  단골쿠폰 할인율 노출 영역  S -->

						<!--  단골쿠폰 할인율 노출 영역  E -->
					</div> <!-- sale_price --> <input type="hidden"
					name="checkPrdAmt_cartJoinList_1" id="checkPrdAmt_cartJoinList_1"
					value="1146310"> <input type="hidden"
					name="checkCouponAmt_cartJoinList_1"
					id="checkCouponAmt_cartJoinList_1" value="57310"> <input
					type="hidden" name="checkPreSaveAmt_cartJoinList_1"
					id="checkPreSaveAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkPlusDscAmt_cartJoinList_1"
					id="checkPlusDscAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkSktPrc_cartJoinList_1"
					id="checkSktPrc_cartJoinList_1" value="0"> <input
					type="hidden" name="checkPartnerSkDscRt_cartJoinList_1"
					id="checkPartnerSkDscRt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkMallPnt_cartJoinList_1"
					id="checkMallPnt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkMileSaveAmt_cartJoinList_1"
					id="checkMileSaveAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkBonusPointSaveAmt_cartJoinList_1"
					id="checkBonusPointSaveAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkMbAddrLocation_cartJoinList_1"
					id="checkMbAddrLocation_cartJoinList_1" value="01"> <input
					type="hidden" name="checkMileageSellerAmt_cartJoinList_1"
					id="checkMileageSellerAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkOcbSeller_cartJoinList_1"
					id="checkOcbSeller_cartJoinList_1" value="0"> <input
					type="hidden" name="checkOcbSaveConfirmAmt_cartJoinList_1"
					id="checkOcbSaveConfirmAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkOcbSellerDivideSaveAmt_cartJoinList_1"
					id="checkOcbSellerDivideSaveAmt_cartJoinList_1" value="0">
					<input type="hidden" name="checkPrdPluDscAmt_cartJoinList_1"
					id="checkPrdPluDscAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkCoupDscAmt_cartJoinList_1"
					id="checkCoupDscAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkDlvCoupDscAmt_cartJoinList_1"
					id="checkDlvCoupDscAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkOcbAddEvlSaveAmt_cartJoinList_1"
					id="checkOcbAddEvlSaveAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkGblPrdWght_cartJoinList_1"
					id="checkGblPrdWght_cartJoinList_1" value="0"> <input
					type="hidden" name="checkOpntSaveRt_cartJoinList_1"
					id="checkOpntSaveRt_cartJoinList_1" value="0">
				</td>
				<td class="rlt_price" data-log-actionid-area="product">

					1,089,000원 <a
					href="javascript:openCouponMasterPOP('1812920309', 'N', 'N');"
					class="defbtn_sm dtype5" onclick="doCommonStat('PCS0101');"
					data-log-actionid-label="coupon_change"
					data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"><span>쿠폰변경</span></a>



					<input type="hidden" name="checkDlvAmt_cartJoinList_1"
					id="checkDlvAmt_cartJoinList_1" value="0"> <input
					type="hidden" name="checkDlvWay_cartJoinList_1"
					id="checkDlvWay_cartJoinList_1" value="01"> <input
					type="hidden" name="checkDlvSellerKey_cartJoinList_1"
					id="checkDlvSellerKey_cartJoinList_1" value="0"> <input
					type="hidden" name="checkDlvCstInstBasiCd_cartJoinList_1"
					id="checkDlvCstInstBasiCd_cartJoinList_1" value="01"> <input
					type="hidden" name="exceptGlobalErrMsg_cartJoinList_1"
					id="exceptGlobalErrMsg_cartJoinList_1" value=""> <input
					type="hidden" name="checkDlvIsUsable_cartJoinList_1"
					id="checkDlvIsUsable_cartJoinList_1" value="Y">
				</td>

				<!-- 배송비 영역 -->
				<td rowspan="1">
					<div class="deliver_price">



						<div class="defbtn_info_wrap" style="" id="b_deli_wrab1812920309"
							data-log-actionid-area="product">
							<em>무료</em>
							<button type="button" class="defbtn_info"
								onmouseover="layerView('b_deli1812920309');jQuery('#b_deli1812920309').css('z-index','20');jQuery('#b_deli_wrab1812920309').css('z-index','20'); rakeLog.sendRakeLog(this);"
								onmouseout="layerHidden('b_deli1812920309');jQuery('#b_deli1812920309').css('z-index','0');jQuery('#b_deli_wrab1812920309').css('z-index','0');"
								data-log-actionid-label="delivery_guide"
								data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}">배송비
								도움말</button>
							<!-- 레이어 -->
							<div class="layer_def_b" id="b_deli1812920309"
								onmouseover="layerView('b_deli1812920309');jQuery('#b_deli1812920309').css('z-index','20');jQuery('#b_deli_wrab1812920309').css('z-index','20');"
								onmouseout="layerHidden('b_deli1812920309');jQuery('#b_deli1812920309').css('z-index','0');jQuery('#b_deli_wrab1812920309').css('z-index','0');">
								<div class="deliver_info">
									<h4>배송비 조건 안내</h4>

									<p>해당 상품은 판매자가 설정한 배송비 조건에 따라 배송비가 달라집니다.</p>


									<div class="ly_boxmodel">
										<ul>
											<li>무료</li>
										</ul>
									</div>


									<h4>제주/도서산간지역 추가 배송비 안내</h4>
									<p>제주/도서산간 배송지의 경우 추가운송비를 지불하여야 합니다.</p>

									<a href="javascript:popIslandZipCodeSearch();"
										class="link_arr_txt2">지역상세보기</a>
									<div class="ly_boxmodel">
										<ul>
											<li>제주지역 <em>8,000원</em></li>
											<li>도서산간 <em>5,000원</em></li>
										</ul>
									</div>

								</div>
								<!-- deliver_info -->
							</div>
							<!-- layer_def_b -->
							<!-- 레이어 끝 -->
						</div>
						<!-- defbtn_info_wrap -->


						<div class="shopinfo_wrap">
							<a
								href="javascript:HeaderComm.MiniMall.goHome.prdNo('1923443424', HeaderComm.link.target.self);"
								onmouseover="layerView('miniLayer_1');jQuery('#miniLayer_1').css('z-index','20');"
								onmouseout="layerHidden('miniLayer_1');jQuery('#miniLayer_1').css('z-index','0');"><strong>해오름씨앤씨</strong></a>

							<div style="" id="miniLayer_1"
								onmouseover="layerView('miniLayer_1');jQuery('#miniLayer_1').css('z-index','20');"
								onmouseout="layerHidden('miniLayer_1');jQuery('#miniLayer_1').css('z-index','0');">
								<div class="layer_def_a3">
									<div class="layer_conts">
										<ul>

											<li><a
												href="javascript:insertFavorShopPopup('', '10137647' ,'27485');"
												onclick="doCommonStat('SCLT007');">단골등록</a></li>

											<li><a
												href="javascript:HeaderComm.MiniMall.goHome.prdNo('1923443424', HeaderComm.link.target.self);"
												onclick="doCommonStat('SCLT008');">스토어 가기</a></li>
										</ul>
									</div>
								</div>
							</div>

						</div>




					</div> <!-- deliver_price -->
				</td>

				<td data-log-actionid-area="product">
					<div class="OrderPrdW_btnWrap">

						<div class="btn_buying_wrap" id="agree_order_make_prd_1812920309">

							<a href="javascript:void(0);" class="defbtn_sm dtype"
								onclick="funcEachOrder('1812920309',-10000,1,0, 'N', 1, 'Bu', 'Y');doCommonStat('SCLT009');"
								data-log-actionid-label="order"
								data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"><span>주문하기</span></a>

							<a href="javascript:void(0);" class="defbtn_sm oneclick"
								onclick="funcEachOrder('1812920309',-10000,1,0, 'N', 1, 'BuOneClick', 'Y');doCommonStat('SCLT009');"
								data-log-actionid-label="oneclick_order"
								data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;}"><span>11Pay구매</span></a>





							<input type="hidden" name="isSoldOut_1" id="isSoldOut_1" value="">
							<a href="javascript:funcDirectDel('1812920309','')"
								class="defbtn_sm dtype7" onclick="doCommonStat('SCLT011');"
								data-log-actionid-label="delete"
								data-log-body="{&quot;basket_sequence&quot;:&quot;1812920309&quot;,&quot;hashed_mbr_id&quot;:&quot;3607081740671783091&quot;}"><span>삭제하기</span></a>

						</div>
						<!-- btn_buying_wrap -->

					</div>
				</td>
			</tr>





			<!-- 생활편의 항목 출력 -->

			<!-- 생활편의 항목 출력 -->

			<input type="hidden" name="sellerCkeckKey" value="1">

			<!-- 상품리스트 End -->
		</tbody>

	</table>



</div>