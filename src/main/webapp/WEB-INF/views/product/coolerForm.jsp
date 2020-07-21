<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>쿨러 ${job}</h4>
<form action="./insertCooler" method="post" name="coolerForm">
  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="cooler_name" id="cooler_name" class="w3-input get_input">
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
          <select name="cooler_company" id="cooler_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="Antec">Antec</option>
            <option value="Fractal Design">Fractal Design</option>
            <option value="NZXT">NZXT</option>
            <option value="coolermaster">coolermaster</option>
            <option value="CORSAIR">CORSAIR</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 제조사 select 파트 -->
    <!-- 타입 select 파트 -->
    <div class="w3-col s6">
      <div class="w3-col s6">
        <div class="w3-row">
          <span class="w3-third span_label">타입</span>
          <span class="w3-twothird">
            <select name="cooler_type" id="cooler_type" class="w3-select get_select" style="width: 140px;">
              <option value="">타입</option>
              <option value="water cooling">수냉</option>
              <option value="air cooling">공랭</option>
            </select>
          </span>
        </div>
      </div>
    </div>
    <!-- 타입 select 파트 -->
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="cooler_price" id="cooler_price" class="w3-input get_input">
        </span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row">
        <span class="w3-col s3 span_label">사진</span>
        <span class="w3-col s9"><input type="file" name="file" id="file" class="w3-button w3-small"></span>
      </div>
    </div>
  </div>
  <!-- Row 3 종료 -->

  <!-- Row 4 시작 -->
  <div class="w3-row w3-section">
    <button type="reset" class="w3-button w3-round w3-right w3-teal button-80">재작성</button>
  <c:choose>
  	<c:when test="${job eq '수정 페이지'}">
  	<button type="submit" class="w3-button w3-round w3-right w3-yellow button-80" onsubmit="SubmitForm('./updateCooler?cooler_no${coolerDTO.cooler_no}')">수정
  	</button></c:when>
  	<c:when test="${job eq '등록 페이지'}">
  	<button type="submit" class="w3-button w3-round w3-right w3-teal button-80" onsubmit="SubmitForm('./insertCooler')">등록
  	</button></c:when>
  </c:choose>
  </div>
  <!-- Row 4 종료 -->

  <!-- input hidden 파트 -->
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="${coolerDTO.cooler_name}">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="${coolerDTO.cooler_price}">

  <input type="text" name="hdn_value" id="hdncompany" class="put_select" value="${coolerDTO.cooler_company}">
  <input type="text" name="hdn_value" id="hdn_type" class="put_select" value="${coolerDTO.cooler_type}">
  <!-- input hidden 파트 -->
</form>