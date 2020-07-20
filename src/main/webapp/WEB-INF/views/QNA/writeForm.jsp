<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WriteForm</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>

    </style>
    <script>
        $("#wBtn").click(function () {
            alert("확인버튼클릭");
            ("#qwFrm").submit(); //submit
        })
    </script>
</head>

<body>

    <form class="w3-container w3-card-4" name="qwFrm" id="qwFrm" action="../QNA/writeProc">
        <h2>Q&A 작성</h2>

        <p><label>작성자</label>
            <input class="w3-input w3-border" name="writer" id="writer" type="text" value="${sessionScope.member_id}" readonly>
            <input type="hidden" name="fk_member_no" id="fk_member_no" value="${sessinScope.member_no}"> 
            </p>

        <p><label>제목</label>
            <input class="w3-input w3-border" name="qna_title" id="qna_title" type="text"></p>


        <p><label>내용</label>
            <textarea class="w3-input w3-border" rows="5" id="qan_content" name="qan_content" style="resize: none;"></textarea>
        </p>

        <div class="w3-section w3-center">
            <input type="submit" class="w3-button w3-cyan" value="확인" name="wbtn" id="wbtn">
            <input type="button" class="w3-button w3-cyan" value="취소" onclick="history.back()">
        </div>
    </form>
</body>

</html>