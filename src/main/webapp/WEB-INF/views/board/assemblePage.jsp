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
  <link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">
  <!-- CDN - swiper -->
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
  <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
  <!-- CDN - Font Awesome 4 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- CDN - Google Icons -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <!-- CDN - jquery 3.4.1 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


  <style>
    .pre_line {
      white-space: pre-line;
    }

    #tab1 {
      background: lightblue;
      /* height: 1700px; */
    }

    #tab2 {
      /* background: blue; */
      /* height: 1700px; */
    }

    .sw-small-button {
      padding: 4px;
      width: 28px;
    }

    .count_ram {
      width: 40px;
      display: inline-block;
      text-align: center;
    }

    #category_selecter {
      margin: auto;
      width: 90%;
    }

    .category_input {
      /* width: 88%; */
      /* margin-left: 2%; */
      height: 40px;
    }
  </style>
  <script>
    function countPlus(e) {
      console.log("++++++++++++++++++++");
      var a1 = e.parentNode.children[3].innerText;
      console.log(a1);
      var a2 = e.parentNode.children[0].innerText;
      console.log(a2);

    }
    function countMinus(e) {
      console.log("-------------------");
      var a1 = e.parentNode.children[1].innerText;
      console.log(a1);
      var a2 = e.parentNode.children[0].innerText;
      console.log(a2);

    }

  </script>

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


            <!-- cpu ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('cpu')">&lt; CPU</span>
                <span id="cpu_price" class=" w3-right price1" style="margin-top: 5px;"><strong>123.450</strong></span>
              </div>
              <div id="cpu_name" class="w3-large w3-section pre_line">인텔 코어i7-10세대 10700K (코멧레이크S) (정품)</div>
              <div id="cpu_info" class="w3-small pre_line">AMD(소켓AM4)/3세대 (Zen 2)/7nm/헥사(6)코어/12쓰레드/기본 클럭:3.6GHz/L3
                캐시:32MB/설계전력:65W/PCIe4.0/메모리
                규격:DDR4/메모리
                버스:3200MHz/쿨러:Wraith Stealth 포함</div>
            </div>

            <!-- 쿨러 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('cooler')">&lt; Cooler</span>
                <span id="cooler_price" class="w3-right price1" style="margin-top: 5px;"><strong>23,540</strong></span>
              </div>
              <div id="cooler_name" class="w3-large w3-section pre_line">쿨러마스터 HYPER H410R (RED)</div>
              <div id="cooler_info" class="w3-small pre_line">CPU 쿨러/타워형/공랭/팬 쿨러/팬 크기:92mm
              </div>
            </div>

            <!-- 메인보드 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('mainboard')">&lt; MainBoard</span>
                <span id="mainboard_price" class="w3-right price1"
                  style="margin-top: 5px;"><strong>123.450</strong></span>
              </div>
              <div id="mainboard_name" class="w3-large w3-section pre_line">ASUS TUF Z390-PLUS GAMING 아이보라</div>
              <div id="mainboard_info" class="w3-small pre_line">인텔(소켓1151v2)/(인텔) Z390/ATX (30.5x24.4cm)/DDR4/메모리 용량:최대
                64GB/XMP/</div>
            </div>

            <!-- 램 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('ram')">&lt; RAM</span>
              </div>
              <div id="ram_name" class="w3-large w3-section pre_line">삼성전자 DDR4 8G PC4-25600 (정품)</div>
              <div class="w3-row w3-margin-bottom">
                <span class="w3-left">
                  <input type="hidden" name="assem_ram_count" id="assem_ram_count">
                  <button class="w3-button w3-border w3-round sw-small-button" onclick="countMinus(this)">-</button>
                  <div id="ram_count" class="count_ram">2</div>
                  <button class="w3-button w3-border w3-round sw-small-button" onclick="countPlus(this)">+</button>
                </span>
                <span id="ram_price" class="w3-right price_ram" style="margin-top: 5px;"><strong>160,000</strong></span>
              </div>
              <div id="ram_info" class="w3-small pre_line">DDR4/PC용/패키지:1개/3200MHz (PC4-25600)/히트싱크:미포함</div>
            </div>

            <!-- 그래픽카드 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('gcard')">&lt; Graphic Card</span>
                <span id="gcard_price" class="w3-right price1" style="margin-top: 5px;"><strong>785,240</strong></span>
              </div>
              <div id="gcard_name" class="w3-large w3-section pre_line">이엠텍 지포스 GTX 1660 SUPER STORM X Dual OC D6 6GB
              </div>
              <div id="gcard_info" class="w3-small pre_line">GTX 1660 SUPER / 12nm / 1530MHz , 부스트 1830MHz / 1408개 /
                PCIe3.0x16 /
                GDDR6(DDR6) / 14000MHz /
                6GB / 192-bit / 최대 모니터 3개/최대 125W/</div>
            </div>

            <!-- 케이스 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('case')">&lt; Case</span>
                <span id="case_price" class="w3-right price" style="margin-top: 5px;"><strong>58,000</strong></span>
              </div>
              <div id="case_name" class="w3-large w3-section pre_line"> ABKO NCORE 새턴 풀 아크릴 슬렌더 (화이트) </div>
              <div id="case_info" class="w3-small pre_line">
                PC케이스(ATX)/미들타워/파워미포함/표준-ATX/Micro-ATX/Mini-ITX/쿨링팬:총4개/LED팬:4개/측면:아크릴/후면:120mm
                LED
                x1/전면:120mm LED x3/너비(W):194mm/깊이(D):413mm/높이(H):454mm/ </div>
            </div>

            <!-- 파워 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('power')">&lt; Power</span>
                <span id="power_price" class="w3-right price" style="margin-top: 5px;"><strong>98,000</strong></span>
              </div>
              <div id="power_name" class="w3-large w3-section pre_line"> 마이크로닉스 Classic II 750W 80PLUS Bronze 230V EU
                HDB </div>
              <div id="power_info" class="w3-small pre_line"> 마이크로닉스 / 750W </div>
            </div>

            <!-- SSD ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('ssd')">&lt; SSD </span>
              </div>

              <!-- ......inner ssd.......... -->
              <div class="w3-row w3-section">
                <input type="hidden" value="1" />
                <div class="w3-right w3-button" onclick="deleteDisk(this)"> &times; </div>
                <div class="w3-rest w3-large pre_line">삼성전자 DDR4 8G PC4-25600 (정품)</div>
              </div>
              <div class="w3-row w3-margin-bottom">
                <span class="w3-left">
                  <button class="w3-button w3-border w3-round sw-small-button">-</button>
                  <div class="count_ram">2</div>
                  <button class="w3-button w3-border w3-round sw-small-button">+</button>
                </span>
                <span class="w3-right price_ram" style="margin-top: 5px;">160,000<br /><strong>320,000</strong></span>
              </div>
              <div class="w3-small pre_line">DDR4/PC용/패키지:1개/3200MHz (PC4-25600)/히트싱크:미포함</div>

              <!-- ......inner ssd.......... -->
              <div class="w3-row w3-section">
                <input type="hidden" value="2" />
                <div class="w3-right w3-button" onclick="deleteDisk(this)"> &times; </div>
                <div class="w3-rest w3-large pre_line">TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB 화이트</div>
              </div>
              <div class="w3-row w3-margin-bottom">
                <span class="w3-left">
                  <button class="w3-button w3-border w3-round sw-small-button">-</button>
                  <div class="count_ram">2</div>
                  <button class="w3-button w3-border w3-round sw-small-button">+</button>
                </span>
                <span class="w3-right price_ram" style="margin-top: 5px;">160,000<br /><strong>320,000</strong></span>
              </div>
              <div class="w3-small pre_line">DDR4/PC용/패키지:2개/3200MHz (PC4-25600)/램타이밍:CL16-18-18-38/1.35V/히트싱크:방열판/방열판
                색상:화이트/LED색상:RGB/LED
                라이트/XMP</div>


            </div>
            <!-- ///////////////// ssd end ///////////////////// -->

            <!-- HDD ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold" onclick="goTab1('hdd')">&lt; HDD </span>
              </div>

              <!-- ......inner ssd.......... -->
              <div class="w3-row w3-section">
                <input type="hidden" value="3" />
                <div class="w3-right w3-button" onclick="deleteDisk(this)"> &times; </div>
                <div class="w3-rest w3-large pre_line">삼성전자 DDR4 8G PC4-25600 (정품)</div>
              </div>
              <div class="w3-row w3-margin-bottom">
                <span class="w3-left">
                  <button class="w3-button w3-border w3-round sw-small-button">-</button>
                  <div class="count_ram">2</div>
                  <button class="w3-button w3-border w3-round sw-small-button">+</button>
                </span>
                <span class="w3-right price_ram" style="margin-top: 5px;">160,000<br /><strong>320,000</strong></span>
              </div>
              <div class="w3-small pre_line">DDR4/PC용/패키지:1개/3200MHz (PC4-25600)/히트싱크:미포함</div>

              <!-- ......inner ssd.......... -->
              <div class="w3-row w3-section">
                <input type="hidden" value="4" />
                <div class="w3-right w3-button" onclick="deleteDisk(this)"> &times; </div>
                <div class="w3-rest w3-large pre_line">TeamGroup T-Force DDR4 16G PC4-25600 CL16 Delta RGB 화이트</div>
              </div>
              <div class="w3-row w3-margin-bottom">
                <span class="w3-left">
                  <button class="w3-button w3-border w3-round sw-small-button">-</button>
                  <div class="count_ram">2</div>
                  <button class="w3-button w3-border w3-round sw-small-button">+</button>
                </span>
                <span class="w3-right price_ram" style="margin-top: 5px;">160,000<br /><strong>320,000</strong></span>
              </div>
              <div class="w3-small pre_line">DDR4/PC용/패키지:2개/3200MHz (PC4-25600)/램타이밍:CL16-18-18-38/1.35V/히트싱크:방열판/방열판
                색상:화이트/LED색상:RGB/LED
                라이트/XMP</div>

            </div>
            <!-- ///////////////// HDD end ///////////////////// -->

            <!-- 샘플샘플 ------------------------------------------------------------>
            <div class="w3-margin w3-padding w3-border w3-round-large">
              <div class="w3-row">
                <span class="w3-left w3-large w3-bold">&lt; aaaaaaaaa </span>
                <span class="w3-right price" style="margin-top: 5px;">bbbbbbbbbbb</span>
              </div>
              <div class="w3-large w3-section pre_line"> cccccccccccccc </div>
              <div class="w3-small pre_line"> dddddddddddddddd </div>
            </div>


          </div>
          <!-- ...탭2 end... -->
        </div>
        <!-- Add Pagination -->
        <!-- <div id="tab_pagenation" class="swiper-pagination"></div> -->
      </div>

      <!-- Initialize Swiper -->
      <script>
        // var swiper = new Swiper('.swiper-container', {
        //   pagination: {
        //     el: '.swiper-pagination',
        //   },
        // });
      </script>

      <!-- 크기에 따라 swiper탭 처리 -->
      <script>
        window.onload = function () {
          swiper_tab();
          scrollTop();
        }

        var swiper1 = new Swiper('.swiper-container', {
          pagination: {
            el: '.swiper-pagination',
          },
          on: {

            slidePrevTransitionEnd: function () {
              // 앞슬라이드 이동시
              console.log("앞슬라이드 이동!!");
              scrollTop();
            }
          }
        });


        function swiper_tab() {
          let tab_container = document.getElementById("tab_container");
          let tab_wrapper = document.getElementById("tab_wrapper");
          let tab1 = document.getElementById("tab1");
          let tab2 = document.getElementById("tab2");
          var swiper1 = document.querySelector('#tab_container').swiper
          console.log("screen_size=" + window.innerWidth);

          if (window.innerWidth >= 900) {
            console.log("change2 grid!!");

            // swiper1.detachEvents();

            tab_container.className = "";
            tab_wrapper.className = "w3-row";
            tab1.className = "w3-col s6";
            tab2.className = "w3-col s6";
            tab1.removeAttribute("style");
            tab2.removeAttribute("style");
            tab_wrapper.removeAttribute("style");

            swiper1.allowTouchMove = false;


          } else if (window.innerWidth < 900) {
            console.log("change2 swiper!!!");
            tab_container.className = "swiper-container";
            tab_wrapper.className = "swiper-wrapper";
            tab1.className = "swiper-slide";
            tab2.className = "swiper-slide";

            swiper1.allowTouchMove = true;
          }

        }

        function scrollTop() {
          window.scrollTo({ top: location, behavior: 'auto' });
        }

        function goTab1(e) {
          console.log(e);
          console.log(e);
          swiper1.slideTo(0, 500, callList(e));
        }

        function callList(e) {

          var category_selecter = document.getElementById("category_selecter");
          category_selecter.value = e;

          setTimeout(() => {
            console.log("--load list of---" + e);
            scrollTop();
          }, 500);
        }

      </script>



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




</body>

</html>