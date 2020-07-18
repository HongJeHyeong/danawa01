<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>CPU ${job}</h4>

<form action="post" action="" name="cpuForm">
  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="cpu_name" id="cpu_name" class="w3-input get_input">
        </span>
      </div>
    </div>
  </div>
  <!-- Row 1 종료 -->

  <!-- Row 2 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">제조사</span>
        <span class="w3-twothird">
          <select name="select_value" id="cpu_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="Intel">인텔</option>
            <option value="AMD">AMD</option>
          </select>
        </span>
      </div>
    </div>

    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">코어</span>
        <span class="w3-twothird">
          <select name="select_value" id="cpu_core" class="w3-select coreSelect get_select">
            <option value="">코어</option>
            <option value="4">4</option>
            <option value="6">6</option>
            <option value="8">8</option>
            <option value="10">10</option>
            <option value="12">12</option>
            <option value="16">16</option>
          </select>
        </span>
      </div>
    </div>

    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">스레드</span>
        <span class="w3-twothird">
          <select name="select_value" id="cpu_thread" class="w3-select get_select">
            <option value="">스레드</option>
            <option value="4">4</option>
            <option value="6">6</option>
            <option value="8">8</option>
            <option value="12">12</option>
            <option value="16">16</option>
            <option value="24">24</option>
            <option value="32">32</option>
          </select>
        </span>
      </div>
    </div>
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">그래픽</span>
        <span class="w3-twothird span_radio">
          <select name="select_value" id="cpu_graphic" class="w3-select get_select">
            <option value="">유무</option>
            <option value="1">O</option>
            <option value="0">X</option>
          </select>
        </span>
      </div>
    </div>

    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">쿨러</span>
        <span class="w3-twothird">
          <select name="select_value" id="cpu_cooler" class="w3-select get_select">
            <option value="">유무</option>
            <option value="1">O</option>
            <option value="0">X</option>
          </select>
        </span>
      </div>
    </div>

    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">소켓</span>
        <span class="w3-twothird">
          <select name="select_value" id="cpu_socket" class="w3-select get_select">
            <option value="">소켓</option>
            <option value="1151v2">1151v2 [인텔]</option>
            <option value="1200">1200 [인텔]</option>
            <option value="AM4">AM4 [라이젠]</option>
          </select>
        </span>
      </div>
    </div>
  </div>
  <!-- Row 3 종료 -->

  <!-- Row 4 시작 -->
  <div class="w3-row w3-section">
    <span class="w3-col s3 span_label">클럭</span>
    <span class="w3-col s4"><input type="text" name="cpu_clock" id="cpu_clock" readonly class="w3-input get_input"
        value=2.0></span>
    <span class="w3-col s5" style="padding-left: 15px;">
      <button type="button" class="w3-button w3-round w3-teal" style="width: 45px;" onclick="clockdown()">-</button>
      <button type="button" class="w3-button w3-round w3-teal" style="width: 45px;" onclick="clockup()">+</button>
    </span>
  </div>
  <!-- Row 4 종료 -->

  <!-- Row 5 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="cpu_price" id="cpu_price" class="w3-input get_input">
        </span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row">
        <span class="w3-col s3 span_label">사진</span>
        <span class="w3-col s9"><input type="file" name="" id="" class="w3-button w3-round w3-small"></span>
      </div>
    </div>
  </div>
  <!-- Row 5 종료 -->

  <!-- Row 6 시작 -->
  <div class="w3-row w3-section">
    <!-- Choose 쓸꺼임 ㄱㄷ -->
    <c:if test="${job eq '수정 페이지'}">
      <!-- 만약 수정이라면  -->
      <button type="submit" class="w3-button w3-round w3-right w3-yellow button-80">수정</button>
    </c:if>
    <button type="submit" class="w3-button w3-round w3-right w3-teal button-80">등록</button>
    <!-- Choose 쓸꺼임 ㄱㄷ -->
    <button type="reset" class="w3-button w3-round w3-right w3-teal button-80">재작성</button>
  </div>
  <!-- Row 6 종료 -->

  <!-- input 파트 -->
  <input type="text" name="hdn_value" class="put_input" id="hdn_name" value="라이젠 3600">
  <input type="text" name="hdn_value" class="put_input" id="hdn_clock" value="3.5">
  <input type="text" name="hdn_value" class="put_input" id="hdn_price" value="375150">

  <input type="text" name="hdn_value" class="put_select" id="hdn_company" value="AMD">
  <input type="text" name="hdn_value" class="put_select" id="hdn_core" value="8">
  <input type="text" name="hdn_value" class="put_select" id="hdn_thread" value="16">
  <input type="text" name="hdn_value" class="put_select" id="hdn_graphic" value="1">
  <input type="text" name="hdn_value" class="put_select" id="hdn_cooler" value="1">
  <input type="text" name="hdn_value" class="put_select" id="hdn_cocket" value="AM4">
  <!-- input 파트 -->

</form>