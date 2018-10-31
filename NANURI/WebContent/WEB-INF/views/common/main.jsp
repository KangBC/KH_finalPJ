<%@page import="com.kh.finalPJ.goods.goodsBbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

List<goodsBbsDto> readbbs = (List<goodsBbsDto>)request.getAttribute("readbbs");
List<goodsBbsDto> datedds = (List<goodsBbsDto>)request.getAttribute("datedds");


%>




<div class="swiper-container swiper_auto" style="height: 345px;">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img01.jpg" width="100%"></div>
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img02.jpg" width="100%"></div>
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img03.jpg" width="100%"></div>
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img04.jpg" width="100%"></div>
	  <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img05.jpg" width="100%"></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
  </div>

<div class="startdiv" style="display: table;">

	<div class="maintop">
		<h1 class="maintop_title">조회수가 높은</h1>
		<hr>
		<div class="main_goods_box">
		
			<div class="startdiv" style="position: relative;padding: 0">
  

 <div class="swiper-container swiper1">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
      
      <%
      // 데이터가 4개이상일때
      if(readbbs.size() > 2){
      for(int i = 0; i < 4; i++){
      
      %>
			<a href="goodsdetail.do?seq=<%=readbbs.get(i).getSeq() %>&g_code=<%=readbbs.get(i).getG_code() %>" class="goods main_goods">
			<div class="goods_img">
			<img alt="" src="resources/img/main_img/<%=readbbs.get(i).getG_img()%>" width="100%"></div>
			<p class="goods_title"><%=readbbs.get(i).getTitle() %></p>
			<p class="goods_price">₩ <%=readbbs.get(i).getG_price()%></p>
			</a>
		
		<%
      }
      }
		%>
		</div>
      <div class="swiper-slide">
	 <%
	 // 데이터가 8개이상일때
	  if(readbbs.size() > 6){
      for(int i = 4; i < 8; i++){
      
      %>
			<a href="goodsdetail.do?seq=<%=readbbs.get(i).getSeq() %>&g_code=<%=readbbs.get(i).getG_code() %>" class="goods main_goods">
			<div class="goods_img">
			<img alt="" src="resources/img/main_img/<%=readbbs.get(i).getG_img()%>" width="100%"></div>
			<p class="goods_title"><%=readbbs.get(i).getTitle() %></p>
			<p class="goods_price">₩ <%=readbbs.get(i).getG_price()%></p>
			</a>
		
		<%
      }
	  }
		%>
		</div>
    </div>

    <!-- Add Arrows -->
    <div class="silder_btn silder_btn2">
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    </div>
  </div>
  
</div>
		
		</div>
		
		<h1 class="maintop_title">최신상품</h1>
		<hr>
		<div>
			<div class="new_datebox" >
				
			</div>
			<div class="new_dateboxlist" >
				
				
				<div class="swiper-container swiper2">
				    <div class="swiper-wrapper">
				      <div class="swiper-slide grid_box">
				      
				        <%
					      // 데이터가 4개이상일때
					      if(datedds.size() > 2){
					      for(int i = 0; i < 4; i++){
					      
					      %>
							<div class="grid_goods">
							<a href="goodsdetail.do?seq=<%=datedds.get(i).getSeq() %>&g_code=<%=datedds.get(i).getG_code() %>">
								<div>
								<img alt="" src="resources/img/main_img/<%=datedds.get(i).getG_img()%>" width="100%">
								</div>
								<span>
									<p><%=datedds.get(i).getTitle() %></p>
									<span>₩ <%=datedds.get(i).getG_price() %></span>
								</span>
								</a>
							</div>
							
						<%
					      }
					      }
						%>
					  </div>
				      <div class="swiper-slide grid_box">
							 <%
					      // 데이터가 8개이상일때
					      if(datedds.size() > 6){
					      for(int i = 4; i < 8; i++){
					   
					      %>
							<div class="grid_goods">
							<a href="goodsdetail.do?seq=<%=datedds.get(i).getSeq() %>&g_code=<%=datedds.get(i).getG_code() %>">
								<div>
								<img alt="" src="resources/img/main_img/<%=datedds.get(i).getG_img()%>" width="100%">
								</div>
								<span>
									<p><%=datedds.get(i).getTitle() %></p>
									<span>₩ <%=datedds.get(i).getG_price() %></span>
								</span>
								</a>
							</div>
							
						<%
					      }
					      }
						%>
					  </div>
				    </div>
				
					<div class="silder_btn">
				    <!-- Add Arrows -->
				    <div class="swiper-button-next"></div>
				    <div class="swiper-button-prev"></div>
				    </div>
				  </div>
  					
			</div>
		</div>
		
	</div>
		
	
	
	</div>
<div class="main_middle">

</div>

<div class="goods_info" style="    margin-top: 130px;">
<div class="cate"><span><i>레저/취미</i></span></div>
	<a href="rental_category.do?division=BC">
		<img alt="" src="resources/img/slideimg/Leisure.jpg" width="100%">
	</a>
	
</div>

<div class="startdiv" style="display: table;">

<h1 class="maintop_title">후기가 높은</h1>
<hr>

<div style="display: table;">

     <%
	if(datedds.size() > 2){
	for(int i = 0; i < 3; i++){
					      
	%>

	<div class="grid_goods_big">
	<a href="goodsdetail.do?seq=<%=datedds.get(i).getSeq() %>&g_code=<%=datedds.get(i).getG_code() %>">
		<div>
		<img alt="" src="resources/img/main_img/<%=datedds.get(i).getG_img()%>" width="100%">
		</div>
		<span>
			<p><%=datedds.get(i).getTitle() %></p>
			<span>₩ <%=datedds.get(i).getG_price() %></span>
		</span>
		</a>
		</div>	
		<%
					      }
					      }
		%>
</div>

<div>
	<div style="display: table;">
  	<%
      // 데이터가 4개이상일때
      if(readbbs.size() > 5){
      for(int i = 0; i < 5; i++){
      
      %>
	<div class="grid_goods_small">
		<a href="goodsdetail.do?seq=<%=readbbs.get(i).getSeq() %>&g_code=<%=readbbs.get(i).getG_code() %>">
		<div>
		<img alt="" src="resources/img/main_img/<%=readbbs.get(i).getG_img()%>" width="100%">
		</div>
		<span>
			<p><%=readbbs.get(i).getTitle() %></p>
			<span>₩ <%=readbbs.get(i).getG_price() %></span>
		</span>
		</a>
		</div>	
		
	<%
	 }
      }
	%>
		
		</div>

</div>


</div>
   
  


 <script src="resources/swiper/swiper.min.js"></script>
 
  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper_auto', {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
     
    });
    
    

	
	
    var swiper = new Swiper('.swiper1', {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
       
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    
    var swiper = new Swiper('.swiper2', {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
      
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
 
  </script>
