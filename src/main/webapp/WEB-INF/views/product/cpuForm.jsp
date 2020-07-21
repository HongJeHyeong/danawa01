<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>CPU ${job}</h4>

<form method="post" name="cpuForm" encType="multipart/form-data" action="./updateCpu?cpu_no=${cpuDTO.cpu_no}">
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
          <select name="cpu_company" id="cpu_company" class="w3-select get_select">
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
          <select name="cpu_core" id="cpu_core" class="w3-select coreSelect get_select">
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
          <select name="cpu_thread" id="cpu_thread" class="w3-select get_select">
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
          <select name="cpu_graphic" id="cpu_graphic" class="w3-select get_select">
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
          <select name="cpu_cooler" id="cpu_cooler" class="w3-select get_select">
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
          <select name="cpu_socket" id="cpu_socket" class="w3-select get_select">
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
        <span class="w3-col s9"><input type="file" name="file" id="file" class="w3-button w3-round w3-small"></span>
      </div>
    </div>
  </div>
  <!-- Row 5 종료 -->

  <!-- Row 6 시작 -->
  <div class="w3-row w3-section">
    <button type="reset" class="w3-button w3-round w3-right w3-teal button-80">재작성</button>
  <c:choose>
  	<c:when test="${job eq '수정 페이지'}">
  	<button type="submit" class="w3-button w3-round w3-right w3-yellow button-80">수정
  	</button></c:when>
  	<c:when test="${job eq '등록 페이지'}">
  	<button type="submit" class="w3-button w3-round w3-right w3-teal button-80" onclick="SubmitForm('./insertCpu')">등록
  	</button></c:when>
  </c:choose>
  </div>
  <!-- Row 6 종료 -->

  <!-- input 파트 -->
  <input type="text" name="hdn_value" class="put_input" id="hdn_name" value="${cpuDTO.cpu_name}">
  <input type="text" name="hdn_value" class="put_input" id="hdn_clock" value="${cpuDTO.cpu_clock}">
  <input type="text" name="hdn_value" class="put_input" id="hdn_price" value="${cpuDTO.cpu_price}">

  <input type="text" name="hdn_value" class="put_select" id="hdn_company" value="${cpuDTO.cpu_company}">
  <input type="text" name="hdn_value" class="put_select" id="hdn_core" value="${cpuDTO.cpu_core}">
  <input type="text" name="hdn_value" class="put_select" id="hdn_thread" value="${cpuDTO.cpu_thread}">
  <input type="text" name="hdn_value" class="put_select" id="hdn_graphic" value="${cpuDTO.cpu_graphic}">
  <input type="text" name="hdn_value" class="put_select" id="hdn_cooler" value="${cpuDTO.cpu_cooler}">
  <input type="text" name="hdn_value" class="put_select" id="hdn_socket" value="${cpuDTO.cpu_socket}">
  <!-- input 파트 -->

</form>