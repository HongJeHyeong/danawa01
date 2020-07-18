<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h4>RAM ${job}</h4>
<form action="" method="post">
  <!-- Row 1 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-col-s2">
      <div class="w3-row">
        <span class="w3-col s3 span_label">제품명</span>
        <span class="w3-col s9">
          <input type="text" name="ram_name" id="ram_name" class="w3-input get_input">
        </span>
      </div>
    </div>
  </div>
  <!-- Row 1 종료 -->

  <!-- Row 2 시작 -->

  <div class="w3-row w3-section">
    <!-- 제조사 select 파트 -->
    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">제조사</span>
        <span class="w3-twothird">
          <select name="ram_company" id="ram_company" class="w3-select get_select">
            <option value="">제조사</option>
            <option value="삼성전자">삼성전자</option>
            <option value="G.SKILL">G.SKILL</option>
            <option value="ESSENCORE">ESSENCORE</option>
            <option value="TeamGroup">TeamGruop</option>
          </select>
        </span>
      </div>
    </div>
    <!-- 제조사 select 파트 -->

    <!-- 용량 select 파트 -->
    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">용량</span>
        <span class="w3-twothird">
          <select name="ram_volume" id="ram_volume" class="w3-select get_select">
            <option value="">용량</option>
            <option value="4">4</option>
            <option value="8">8</option>
            <option value="16">16</option>
            <option value="32">32</option>
          </select>
        </span>
      </div>
      <!-- 용량 select 파트 -->
    </div>

    <div class="w3-col s4">
      <div class="w3-row">
        <span class="w3-third span_label">클럭</span>
        <span class="w3-twothird">
          <select name="ram_clock" id="ram_clock" class="w3-select get_select">
            <option value="">클럭</option>
            <option value="2666">2666</option>
            <option value="3200">3200</option>
            <option value="3600">3600</option>
            <option value="4000">4000</option>
          </select>
        </span>
      </div>
    </div>
  </div>
  <!-- Row 2 종료 -->

  <!-- Row 3 시작 -->
  <div class="w3-row w3-section">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-row">
        <span class="w3-col s3 span_label">가격</span>
        <span class="w3-col s9">
          <input type="number" name="ram_price" id="ram_price" class="w3-input get_input">
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
  <input type="text" name="hdn_value" id="hdn_name" class="put_input" value="트라이던트">
  <input type="text" name="hdn_value" id="hdn_price" class="put_input" value="165555">

  <input type="text" name="hdn_value" id="hdn_company" class="put_select" value="G.SKILL">
  <input type="text" name="hdn_value" id="hdn_volume" class="put_select" value="8">
  <input type="text" name="hdn_value" id="hdn_clock" class="put_select" value="3200">
  <!-- input hidden 파트 -->
</form>