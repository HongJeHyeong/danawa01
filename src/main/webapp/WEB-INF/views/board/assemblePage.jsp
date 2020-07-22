<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- CDN - W3CSS -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- CDN - sw_topNav.css -->
  <link rel="stylesheet" href="https://swsw1005.github.io/css/sw-1.0.0.css">
  <!-- CDN - swiper -->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
  <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
  <!-- CDN - jquery 3.4.1 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <!-- CDN - Font Awesome 4 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- CDN - Google Icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/p_list.css" />

</head>

<body>

  <!-- responsive template by SW ----------------------------------------------------------- -->
  <!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
  <div class="sw-topnav-margin">
    &nbsp;
  </div>

  <!-- CONTENT ------------------------------------------------------------------------------------ -->
  <div class="sw-center">

    <!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
    <div class="sw-container-1000">
      <!-- 3 main content start here!!!----------------------------------------------------------- -->
      <!-- 2 main content start here!!!----------------------------------------------------------- -->
      <!-- 1 main content start here!!!----------------------------------------------------------- -->

      <div id="tab_container" class="swiper-container">
        <div id="tab_wrapper" class="swiper-wrapper">


          <div id="tab1" class="swiper-slide">

            <select name="category" id="category_selecter" class="w3-input w3-round" onchange="catogory_change()">
              <option value="cpu">CPU</option>
              <option value="mb">MainBoard</option>
              <option value="cooler">Cooler</option>
              <option value="ram">RAM</option>
              <option value="gcard">Graphic Card</option>
              <option value="case">Case</option>
              <option value="power">Power</option>
              <option value="ssd">SSD</option>
              <option value="hdd">HDD</option>
            </select>

            <div id="searchFormHere">

            </div>


            <!-- <div class="w3-row">
              <div class="w3-col" style="width: 33.33%;">
                <select name="" id="" class="w3-input w3-round category_input" onchange="subcategory_change()">
                  <option value="0">카데고리</option>
                  <option value="1">인텔</option>
                  <option value="2">AMD</option>
                </select>
              </div>
              <div class="w3-col" style="width: 33.33%;">
                <input type="text" name="" id="" class="w3-input w3-round category_input" placeholder="검색 : 제목" />
              </div>
              <div class="w3-col" style="width: 33.33%;">
                <input type="text" name="" id="" class="w3-input w3-round category_input" placeholder="검색 : 정보" />
              </div>
            </div> -->



          </div>
          <!-- ...탭1 end................................................................................................................................ -->
          <div id="tab2" class="swiper-slide">


            <!-- 여기에 장바구니 페이지 (고른 부품목록) -->
            <!-- cartPage.jsp -->

          </div>
          <!-- ...탭2 end... -->
        </div>
        <!-- Add Pagination -->
        <!-- <div id="tab_pagenation" class="swiper-pagination"></div> -->
      </div>

      <!-- main content end----------------------------------------------------------------------- -->
    </div>

    <!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
    <div class="sw-container-400 w3-center w3-section">
      <!-- button.w3-button.w3-green[type=button] -->
      <button class="w3-button w3-lime" type="button"> &rang; 견적공유</button>
      <button class="w3-button w3-aqua" type="button"> &rang; 바로주문</button>

    </div>



  </div>

  <!-- HEAD ------------------------------------------------------------------------------------ -->
  <tf:TopNav grade="${grade}" />

  <script src="${pageContext.request.contextPath}/resources/js/p_list.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/TopNav.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main/assemblePage.js"></script>

</body>

</html>