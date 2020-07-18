<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>메인보드 ${job}</h4>
<form action="" method="post">
  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="mb_name" id="mb_name" class="w3-input get_input">
        </span>
      </div>
    </div>
  </div>
  <!-- Row 1 종료 -->

  <!-- Row 2 시작 -->
  <div class="w3-row w3-section">
    <!-- 소켓 select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">소켓</span>
        <span class="w3-twothird">
          <select name="mb_socket" id="mb_socket" class="w3-select get_select">
            <option value="">소켓</option>
            <option value="1151v2">1151v2 [인텔]</option>
            <option value="1200">1200 [인텔]</option>
            <option value="AM4">AM4 [AMD]</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 소켓 select 파트 -->

    <!-- 칩셋 select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">칩셋</span>
        <span class="w3-twothird">
          <select name="mb_chipset" id="mb_chipset" class="w3-select get_select">
            <option value="">칩셋</option>
            <option value="H310">H310 [인텔]</option>
            <option value="B365">B365 [인텔]</option>
            <option value="Z390">Z390 [인텔]</option>
            <option value="H410">H410 [인텔]</option>
            <option value="B460">B460 [인텔]</option>
            <option value="Z490">Z490 [인텔]</option>
            <option value="A320">A320 [AMD]</option>
            <option value="B450">B450 [AMD]</option>
            <option value="X470">X470 [AMD]</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 칩셋 select 파트 -->
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <!-- 제조사 Select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">제조사</span>
        <span class="w3-twothird">
          <select name="mb_company" id="mb_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="ASUS">ASUS</option>
            <option value="MSI">MSI</option>
            <option value="GIGABYTE">GIGABYTE</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 제조사 Select 파트 -->

    <!-- 램 슬롯 Select 파트 -->
    <div class="w3-col s6">
      <div class="w3-row">
        <span class="w3-third span_label">램 슬롯</span>
        <span class="w3-twothird">
          <select name="mb_ramslot" id="mb_ramslot" class="w3-select get_select">
            <option value="">슬롯</option>
            <option value="2">2</option>
            <option value="4">4</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 램 슬롯 Select 파트 -->

  </div>
  <!-- Row 3 종료 -->

  <!-- Row 4 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="mb_price" id="mb_price" class="w3-input get_input">
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
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="${mainboardDTO.mb_name }">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="${mainboardDTO.mb_price }">

  <input type="text" name="hdn_value" id="hdn_socket" class="put_select" value="${mainboardDTO.mb_socket }">
  <input type="text" name="hdn_value" id="hdn_chipset" class="put_select" value="${mainboardDTO.mb_chipset }">
  <input type="text" name="hdn_value" id="hdn_company" class="put_select" value="${mainboardDTO.mb_company }">
  <input type="text" name="hdn_value" id="hdn_ramslot" class="put_select" value="${mainboardDTO.mb_ramslot }">
  <!-- input hidden 파트 -->
</form>