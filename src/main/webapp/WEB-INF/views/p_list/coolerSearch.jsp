<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="w3-container w3-section">
        <div class="rowLine">
            <!--상품내 구분-->
            <div class="w3-green">
                <select class="w3-input w90 itemSel" name="" onchange="changeCoolerCategory(this)">
                    <option value="">전체</option>
                    <option value="공냉">공냉</option>
                    <option value="수냉">수냉</option>
                </select>
            </div>
            <!--상품 제목 검색창-->
            <div class="w3-yellow">
                <input class="w3-input w3-border w3-cyan myInput" style="width: 100%;" placeholder="상품제목 검색" onkeyup="myFunction()"
                    type="text">
            </div>
            <!--상품 상세정보 검색창-->
            <div class="w3-cyan">
                <input class="w3-input w3-border w3-cyan myInput2" style="width: 100%;" placeholder="상품 상세정보 검색" onkeyup="my2Function()"
                    type="text">
            </div>
        </div>
    </div>
    <div id="itemList" class="w3-container">
        <!--상품구분-->


    </div>
<script src="${pageContext.request.contextPath}/resources/js/list.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/list.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>