<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="./asset/css/list.css" />
    <script src="./asset/js/list.js"></script>
</head>
<body>
    <form name="" action="">
        <div class="w3-container w3-section">
            <div class="rowLine">
                <!--상품내 구분-->
                <div class="w3-green">
                    <select class="w3-input w90" name="" id="itemSel" onchange="changeDiskCategory(this)">
                        <option value="전체">전체</option>
                        <option value="SSD">SSD</option>
                        <option value="HDD">HDD</option>
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
        <div class="w3-container itemList">
            <!--상품구분-->


        </div>
    </form>
</body>
</html>