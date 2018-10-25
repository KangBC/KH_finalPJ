<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>

  .swiper-container {
      width: 100%;
      height: 100%;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }

</style>




<div class="swiper-container" style="height: 350px;">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img01.jpg" width="100%"></div>
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img02.jpg" width="100%"></div>
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img03.jpg" width="100%"></div>
      <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img04.jpg" width="100%"></div>
	  <div class="swiper-slide"><img alt="" src="resources/img/slideimg/img05.jpg" width="100%"></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
<!--     Add Arrows
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div> -->
  </div>

<div class="startdiv">


<ul class="category">
		<li><a href="rental_category.do?division=AC">유아</a></li>
		<li><a href="rental_category.do?division=BC">레저</a></li>
		<li><a href="rental_category.do?division=CC">패션</a></li>
		<li><a href="rental_category.do?division=DC">리빙</a></li>
		</ul>

</div>


 <script src="resources/swiper/swiper.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
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
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>