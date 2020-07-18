<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>파워 ${job}</h4>
<form action="" method="post">
  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="power_name" id="power_name" class="w3-input get_input">
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
          <select name="power_company" id="power_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="Micronics">Micronics</option>
            <option value="FSP">FSP</option>
            <option value="잘만">잘만</option>
            <option value="시소닉">시소닉</option>
            <option value="CORSAIR">CORSAIR</option>
            <option value="Antec">Antec</option>
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
          <select name="power_capacity" id="power_capacity" class="w3-select get_select">
            <option value="">파워</option>
            <option value="500">500</option>
            <option value="550">550</option>
            <option value="600">600</option>
            <option value="650">650</option>
            <option value="700">700</option>
            <option value="750">750</option>
            <option value="800">800</option>
            <option value="850">850</option>
            <option value="1000">1000</option>
            <option value="1600">1600</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 파워 select 파트 -->
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="power_price" id="power_price" class="w3-input get_input">
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
  <!-- Row 3 종료 -->

  <!-- Row 4 시작 -->
  <div class="w3-row w3-section">
    <c:if test="${job eq '수정 페이지'}">
      <!-- 만약 수정이라면  -->
      <button type="submit" class="w3-button w3-round button-80 w3-border w3-right w3-teal">수정</button>
    </c:if>
    <button type="submit" class="w3-button w3-round button-80 w3-border w3-right w3-teal">등록</button>
    <button type="reset" class="w3-button w3-round button-80 w3-border w3-right w3-teal">재작성</button>
  </div>

  <!-- Row 4 종료 -->

  <!-- input hidden 파트 -->
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="잘만">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="68700">

  <input type="text" name="hdn_value" id="hdn_company" class="put_select" value="잘만">
  <input type="text" name="hdn_value" id="hdn_capacity" class="put_select" value="600">
  <!-- input hidden 파트 -->
</form>