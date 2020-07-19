<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form name="" action="">
    <div class="w3-container w3-section">
        <div class="rowLine">
            <!--상품내 구분-->
            <div class="w3-green">
                <select class="w3-input w90" name="" id="itemSel" onchange="changeMainboardCategory(this)">
                    <option value="전체">전체</option>
                    <option value="1200">1200</option>
                    <option value="1151v2">1151v2</option>
                    <option value="AM4">AM4</option>
                </select>
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
</form>