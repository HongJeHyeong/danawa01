<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>그래픽카드 ${job}</h4>
<form action="./insertGcard" method="post" name="gcardForm">
  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="gc_name" id="gc_name" class="w3-input get_input">
        </span>
      </div>
    </div>
  </div>
  <!-- Row 1 종료 -->

  <!-- Row 2 시작 -->
  <div class="w3-row w3-section">
    <!-- 제조사 select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">제조사</span>
        <span class="w3-twothird">
          <select name="gc_company" id="gc_compay" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="MSI">MSI</option>
            <option value="갤럭시">갤럭시</option>
            <option value="GIGABYTE">GIGABYTE</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 제조사 select 파트 -->

    <!-- 파워 select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">파워</span>
        <span class="w3-twothird">
          <select name="gc_min_power" id="gc_min_power" class="w3-select get_select">
            <option value="">파워</option>
            <option value="400">400</option>
            <option value="450">450</option>
            <option value="500">500</option>
            <option value="550">550</option>
            <option value="600">600</option>
            <option value="650">650</option>
            <option value="700">700</option>
            <option value="750">750</option>
            <option value="800">800</option>
            <option value="850">850</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 파워 select 파트 -->
  </div>
  <!-- Row 2 종료 -->


  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <!-- 칩셋 select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">칩셋</span>
        <span class="w3-twothird">
          <select name="gc_chipset" id="gc_chipset" class="w3-select get_select">
            <option value="">칩셋</option>
            <option value="RTX 2080 Ti">RTX 2080 Ti</option>
            <option value="RTX 2080 SUPER">RTX 2080 SUPER</option>
            <option value="RTX 2070 SUPER">RTX 2070 SUPER</option>
            <option value="RTX 2060 SUPER">RTX 2060 SUPER</option>
            <option value="GTX 1660 Ti">GTX 1660 Ti</option>
            <option value="GTX 1650 SUPER">GTX 1650 SUPER</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 칩셋 select 파트 -->

    <!-- 길이 input 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">길이</span>
        <span class="w3-twothird">
          <input type="number" name="gc_length" id="gc_length" class="w3-input get_input">
        </span>
      </div>
    </div>
    <!-- 길이 input 파트 -->
  </div>
  <!-- Row 3 종료 -->

  <!-- Row 4 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="gc_price" id="gc_price" class="w3-input get_input">
        </span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row">
        <span class="w3-col s3 span_label">사진</span>
        <span class="w3-col s9"><input type="file" name="" id="" class="w3-button w3-small"></span>
      </div>
    </div>
  </div>
  <!-- Row 4 종료 -->

  <!-- Row 5 시작 -->
  <div class="w3-row w3-section">
    <c:if test="${job eq '수정 페이지'}">
      <!-- 만약 수정이라면  -->
      <button type="submit" class="w3-button w3-round button-80 w3-border w3-right w3-teal">수정</button>
    </c:if>
    <button type="submit" class="w3-button w3-round button-80 w3-border w3-right w3-teal">등록</button>
    <button type="reset" class="w3-button w3-round button-80 w3-border w3-right w3-teal">재작성</button>
  </div>

  <!-- Row 5 종료 -->

  <!-- input hidden 파트 -->
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="${gcardDTO.gc_name}">
  <input type="text" name="hdn_value" id="hdn_length" class="put_input" value="${gcardDTO.gc_length}">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="${gcardDTO.gc_price}">

  <input type="text" name="hdn_value" id="hdn_company" class="put_select" value="${gcardDTO.gc_company}">
  <input type="text" name="hdn_value" id="hdn_min_power" class="put_select" value="${gcardDTO.gc_min_power}">
  <input type="text" name="hdn_value" id="hdn_chipset" class="put_select" value="${gcardDTO.gc_chipset}">
  <!-- input hidden 파트 -->
</form>