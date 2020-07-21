<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>HDD/SSD ${job}</h4>
<form action="./insertDisk" method="post" name="diskForm" encType="multipart/form-data" id="diskForm">

<c:if test="${diskDTO.disk_no!=null}">
<input type="hidden" value="${diskDTO.disk_no}" name="disk_no" id="disk_no">
</c:if>


  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="disk_name" id="disk_name" class="w3-input get_input">
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
          <select name="disk_company" id="disk_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="삼성">삼성</option>
            <option value="Seagate">Seagate</option>
            <option value="Western Digital">Western Digital</option>
            <option value="Toshiba">Toshiba</option>
            <option value="마이크론">마이크론</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 제조사 select 파트 -->

    <!-- 카테고리 select 파트 -->
    <div class="w3-col s6">
      <div class="row">
        <span class="w3-third span_label">카테고리</span>
        <span class="w3-twothird">
          <select name="disk_category" id="disk_category" class="w3-select get_select">
            <option value="">카테고리</option>
            <option value="SSD">SSD</option>
            <option value="HDD">HDD</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 카테고리 select 파트 -->
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <!-- 타입 select 파트 -->
    <div class="w3-col s6">
      <div class="row">
        <span class="w3-third span_label">타입</span>
        <span class="w3-twothird">
          <select name="disk_type" id="disk_type" class="w3-select get_select">
            <option value="">타입</option>
            <option value="8.9cm">8.9cm</option>
            <option value="M.2">M.2</option>
            <option value="6.4cm">6.4cm</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 타입 select 파트 -->

    <!-- 용량 select 파트 -->
    <div class="w3-col s6">
      <div class="row">
        <span class="w3-third span_label">용량</span>
        <span class="w3-twothird">
          <select name="disk_volume" id="disk_volume" class="w3-select get_select">
            <option value="">용량</option>
            <option value="250">250GB</option>
            <option value="500">500GB</option>
            <option value="1000">1000GB [1TB]</option>
            <option value="2000">2000GB [2TB]</option>
            <option value="3000">3000GB [3TB]</option>
            <option value="4000">4000GB [4TB]</option>
            <option value="8000">8000GB [8TB]</option>
            <option value="10000">10000GB [10TB]</option>
            <option value="14000">14000GB [14TB]</option>
            <option value="16000">16000GB [16TB]</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 용량 select 파트 -->
  </div>
  <!-- Row 3 종료 -->

  <!-- Row 4 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="disk_price" id="disk_price" class="w3-input get_input">
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
  <!-- Row 4 종료 -->

  <!-- Row 5 시작 -->
    <div class="w3-row w3-section">
    <button type="reset" class="w3-button w3-round w3-right w3-teal button-80">재작성</button>
  <c:choose>
  	<c:when test="${job eq '수정 페이지'}">
  	<button type="button" class="w3-button w3-round w3-right w3-yellow button-80" onclick="submitFormDisk()">수정
  	</button></c:when>
  	<c:when test="${job eq '등록 페이지'}">
  	<button type="submit" class="w3-button w3-round w3-right w3-teal button-80">등록
  	</button></c:when>
  </c:choose>
  </div>
  <!-- Row 5 종료 -->

  <!-- input hidden 파트 -->
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="${diskDTO.disk_name}">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="${diskDTO.disk_price}">

  <input type="text" name="hdn_value" id="hdn_company" class="put_select" value="${diskDTO.disk_company}">
  <input type="text" name="hdn_value" id="hdn_category" class="put_select" value="${diskDTO.disk_category}">
  <input type="text" name="hdn_value" id="hdn_type" class="put_select" value="${diskDTO.disk_type}">
  <input type="text" name="hdn_value" id="hdn_volume" class="put_select" value="${diskDTO.disk_volume}">
  <!-- input hidden 파트 -->
</form>