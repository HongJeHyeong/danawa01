<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- CDN - W3CSS -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- CDN - Font Awesome 4 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- CDN - Google Icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <!-- CDN - sw_topNav.css -->
  <link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">

  <style>
    th {
      min-width: 100px;
    }
  </style>
</head>

<body>



  <!-- HEAD ------------------------------------------------------------------------------------ -->
  <!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->
  <div id="mySidenav" class="sidenav" style="background: beige;">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#">aa11</a>
    <a href="#">bb22</a>
    <a href="#">cc33</a>
    <a href="#">dd44</a>
  </div>

  <div id="main">
    <!-- responsive template by SW ----------------------------------------------------------- -->
    <!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
    <div class="sw-topnav-margin">
      &nbsp;
    </div>
    <!-- CONTENT ------------------------------------------------------------------------------------ -->
    <div class="sw-center">
      <!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
      <div class="sw-container-700">
        <div class="w3-container">
          <!-- 3 main content start here!!!----------------------------------------------------------- -->
          <!-- 2 main content start here!!!----------------------------------------------------------- -->
          <!-- 1 main content start here!!!----------------------------------------------------------- -->

          <hr>
          <h4>타이틀-타이틀-타이틀-타이틀-타이틀-타이틀</h4>
          <div class="w3-row">
            <span class="w3-small w3-left">김써끈</span>
            <span class="w3-small w3-right">2020.07.15</span>
          </div>
          <hr>
          <div class="w3-section">
            <table class="w3-table">
              <caption>
                <h3>제품 스펙 상세정보</h3>
              </caption>
              <thead class="txt_style3">
                <tr>
                  <th scope="col">분류</th>
                  <th scope="col">상품명</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th>CPU</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=11308485', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">인텔
                      코어i7-10세대 10700K (코멧레이크S) (정품)</a>


                  </td>
                </tr>
                <tr>
                  <th>쿨러</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=10467333', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">NZXT
                      KRAKEN X63</a>


                  </td>
                </tr>
                <tr>
                  <th>메인보드</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=11210109', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">ASUS
                      ROG STRIX Z490-A GAMING STCOM</a>


                  </td>
                </tr>
                <tr>
                  <th>메모리</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=7350850', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">G.SKILL
                      DDR4 16G PC4-28800 CL16 TRIDENT Z ROYAL 실버 (8Gx2)</a>


                  </td>
                </tr>
                <tr>
                  <th>그래픽카드</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=8467755', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">갤럭시
                      GALAX 지포스 RTX 2070 SUPER EX WHITE OC D6 8GB</a>


                  </td>
                </tr>
                <tr>
                  <th>SSD</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=9991605', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">Seagate
                      파이어쿠다 520 M.2 NVMe (500GB)</a>


                  </td>
                </tr>
                <tr>
                  <th>케이스</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=11586053', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">써멀테이크
                      View 71 강화유리 SNOW 에디션</a>


                  </td>
                </tr>
                <tr>
                  <th>파워</th>
                  <td>
                    <a href="#"
                      onclick="window.open('http://shop.danawa.com/pc/?controller=estimateDeal&methods=productInformation&productSeq=9564753', 'prodInfo', 'width=950, height=800, scrollbars=yes');return false;">시소닉
                      FOCUS GOLD GX-850 WHITE Full Modular</a>


                  </td>
                </tr>
                <tr>
                  <!-- 201809 : 총 견적 합계 추가 -->
                  <th class="estimate_total" scope="row"><span>견적 합계</span></th>
                  <td class="estimate_price"><span class="txt_mony_style">2,990,000</span>원</td>
                </tr>
              </tbody>
            </table>
            <br><br>
            <h4>Content</h4>
            <div class="w3-border">
              <pre>이 컴퓨터가 좋은지는 니들이 직접 판단해라 싫으면 사지말든가</pre>
            </div>
            <br>
            <div class="w3-center">
              <input type="button" class="w3-button w3-blue" value="버튼">
              <input type="button" class="w3-button w3-blue" value="버튼">
            </div>

            <div class="w3-section">
              <h4>Comment</h4>


              <div class="w3-row-padding">
                <div class="w3-col w3-right w3-margin-top" style="width: 100px;"> <input type="button"
                    class="w3-button w3-blue w3-large" style="vertical-align: middle;" value="등록" /></div>
                <div class="w3-rest">
                  <textarea name="comment" id="comment" rows="3" class="w3-input w3-border" placeholder="써끈"></textarea>
                </div>
              </div>

              <!-- <c:forEach items="${}" var=""> -->

              <div class="w3-row w3-section w3-border-bottom">
                <input type="hidden" value="no" class="rno">
                <div class="w3-container"> 비싸서 추천안함 써끈써끈 돌리고 써끈 </div>
                <div class="w3-section">
                  <span class="w3-left w3-small">
                    김써끈 | 07-18
                  </span>
                  <span class="w3-right"><input type="button" value="삭제"></span>
                </div>
              </div>
              <!-- </c:forEach> -->

            </div>


          </div>

        </div>
      </div>
      <!-- main content end----------------------------------------------------------------------- -->
    </div>
  </div>

  <!-- HEAD ------------------------------------------------------------------------------------ -->
  <!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->
  <header class="topnav w3-card-4" id="topNav">
    <a href="#" class="active">다너놔</a>
    <a href="#">견적짜기</a>
    <a href="#">견적게시판</a>
    <a href="#">공지사항</a>
    <a href="#">QNA</a>
    <a href="#">마이페이지</a>
    <a href="javascript:void(0);" class="icon" onclick="responsiveMenuPopUp()">
      <i class="fa fa-bars"></i>
    </a>
  </header>

  <script>
    /* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
    function responsiveMenuPopUp() {
      var x = document.getElementById("topNav");
      if (x.className === "topnav w3-card-4") {
        x.className += " responsive";
      } else {
        x.className = "topnav w3-card-4";
      }
    }

    window.onresize = function () {
      var x = document.getElementById("topNav");
      x.className = "topnav w3-card-4";

    }
  </script>



</body>

</html>