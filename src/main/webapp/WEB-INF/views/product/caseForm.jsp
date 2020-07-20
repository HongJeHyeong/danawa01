<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>케이스 ${job}</h4>

<form action="./insertCase" method="post" name="caseForm">

  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="case_name" id="case_name" class="w3-input get_input">
        </span>
      </div>
    </div>
  </div>
  <!-- Row 1 종료 -->

  <!-- Row 2 시작 -->
  <div class="w3-row w3-section">
    <!-- 제조사 select 파트 -->
    <div class="w3-col s6">
      <div class="row">
        <span class="w3-third span_label">제조사</span>
        <span class="w3-twothird">
          <select name="case_company" id="case_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="잘만">잘만</option>
            <option value="대양케이스">대양케이스</option>
            <option value="DAVEN">DAVEN</option>
            <option value="ABKO">ABKO</option>
            <option value="Micronics">Micronics</option>
            <option value="Lian Li">Lian Li</option>
            <option value="darkFlash">darkFlash</option>
            <option value="3RSYS">3RSYS</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 제조사 select 파트 -->

    <!-- 길이 input 파트 -->
    <div class="w3-col s6">
      <div class="row">
        <span class="w3-third span_label">길이</span>
        <span class="w3-twothird">
          <input type="number" name="case_gc_length" id="case_gc_length" class="w3-input get_input">
        </span>
      </div>
    </div>
    <!-- 길이 input 파트 -->
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="case_price" id="case_price" class="w3-input get_input">
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
  	<button type="submit" class="w3-button w3-round w3-right w3-yellow button-80" onsubmit="SubmitForm('./updateCase?case_no${caseDTO.case_no}')">수정
  	</button></c:when>
  	<c:when test="${job eq '등록 페이지'}">
  	<button type="submit" class="w3-button w3-round w3-right w3-teal button-80" onsubmit="SubmitForm('./insertCase')">등록
  	</button></c:when>
  </c:choose>
  </div>
  <!-- Row 4 종료 -->

  <!-- input hidden 파트 -->
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="${caseDTO.case_name}">
  <input type="text" name="hdn_value" id="hdn_gc_length" class="put_input" value="${caseDTO.case_gc_length}">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="${caseDTO.case_price}">

  <input type="text" name="hdn_value" id="hdn_company" class="put_select" value="${caseDTO.case_company}">
  <!-- input hidden 파트 -->
</form>