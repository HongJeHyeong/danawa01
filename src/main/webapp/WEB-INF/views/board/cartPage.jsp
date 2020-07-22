<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<!-- cpu ------------------------------------------------------------>
<div class="w3-margin w3-padding w3-border w3-round-large">
  <div class="w3-row">
    <span class="w3-left w3-large w3-bold" onclick="goTab1('cpu')">&lt; CPU</span>
    <span id="cpu_price" class=" w3-right price1" style="margin-top: 5px;">
      <strong>${assem_cpu_price}</strong>
    </span>
  </div>
  <div id="cpu_name" class="w3-large w3-section pre_line">${cpu_name}</div>
  <div id="cpu_info" class="w3-small pre_line">${cpu_info}</div>
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
    <span class="w3-left w3-large w3-bold" onclick="goTab1('mb')">&lt; MainBoard</span>
    <span id="mainboard_price" class="w3-right price1" style="margin-top: 5px;"><strong>123.450</strong></span>
  </div>
  <div id="mb_name" class="w3-large w3-section pre_line">ASUS TUF Z390-PLUS GAMING 아이보라</div>
  <div id="mb_info" class="w3-small pre_line">인텔(소켓1151v2)/(인텔) Z390/ATX (30.5x24.4cm)/DDR4/메모리 용량:최대
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