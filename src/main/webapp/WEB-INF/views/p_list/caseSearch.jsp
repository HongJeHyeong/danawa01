<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="w3-container w3-section">
        <div class="rowLine">
            <!--상품내 구분-->
            <div class="">
                <div class="slidecontainer">
                    <input type="range" class="slideVal" min="0" max="600" step="50" value="0"
                        onchange="caseSlide(this)">
                    <div class="subrowLine">
                        <input type="number" min="0" max="600" step="50" class="slideNum" placeholder="최소값" />
                        <input type="button" onclick="changeCaseCategory(this)" value="검색">
                    </div>
                </div>
            </div>
            <!--상품 제목 검색창-->
            <div class="w3-yellow">
                <input class="w3-input w3-border w3-cyan myInput" placeholder="상품제목 검색" onkeyup="myFunction()"
                    type="text">
            </div>
            <!--상품 상세정보 검색창-->
            <div class="w3-cyan">
                <input class="w3-input w3-border w3-cyan myInput2" placeholder="상품 상세정보 검색" onkeyup="my2Function()"
                    type="text">
            </div>
        </div>
    </div>
    <div id="itemList" class="w3-container">
        <!--상품구분-->


    </div>
<script src="${pageContext.request.contextPath}/resources/js/list.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>