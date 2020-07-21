<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Content</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        pre {
            font-family: inherit;
        }
    </style>
    
    <script>
    $(function () {
        $("#rwBtn").click(function () {
            alert("답글쓰기 버튼 클릭");            
        });

        $("#uBtn").click(function () {
            alert("수정하기 버튼 클릭");
            // location.href = "~~/updateForm.do?글번호&?현재페이지";
        });

        $("#dBtn").click(function () {
            alert("삭제하기 버튼 클릭");
            //location.herf="~~/deleteProc.do?글번호";
        });

        $("#rdBtn").click(function () {
            alert("리플삭제 버튼 클릭");
            // location.href="~~/replyDeleteProc.do?글번호&답글번호";
        });
    });//end
    </script>
</head>

<body>

    <div class="w3-container">
        <h2>Q&A 상세보기</h2>

        <p><label>작성자</label>
            <input class="w3-input w3-border" name="writer" id="writer" type="text" value="${qnaDTO.member_id}" readonly></p>
            <input type="hidden" value="${sessionScope.member_no}" name="fk_member_no" id="fk_member_no">
            <input type="hidden" value="${qnaDTO.qna_reply_cnt}" id="qna_reply_cnt" name="qna_reply_cnt">

        <p><label>제목</label>
            <input class="w3-input w3-border" name="title" id="title" type="text" readonly value="${qnaDTO.qna_title}"></p>


        <p><label>내용${qnaDTO.qna_reply_cnt}</label>
            <textarea class="w3-input w3-border" rows="5" id="content" name="content" style="resize: none;"
                readonly>${qnaDTO.qna_content}</textarea>
        </p>


        <!-- 답변내용 --------------------------------------------------------------------------->
        <c:if test="${qnaDTO.qna_reply_cnt >= 1}">
<h1>답변있어요</h1>
        </c:if>


        <!-- 버튼그룹 --------------------------------------------------------------------------->
        <div class="w3-section w3-center">
            
            <input type="button" class="w3-button w3-cyan" value="목록보기" onclick="history.back()">
            
            <c:if test="${sessionScope.member_id == qnaDTO.member_id}">
                <input type="button" class="w3-button w3-red" value="수정(내글)" id="uBtn">
            </c:if>
            <c:if test="${sessionScope.grade >= 2 || sessionScope.member_id == qnaDTO.member_id}">
                <input type="button" class="w3-button w3-green" value="삭제(내글or영자)" id="dBtn">
            </c:if>
            
        </div>
    </div>

    <!-- 운영자만 보임 ------------------------------------------------------------------------->
    <c:if test="${sessionScope.grade >= 2}">
        <div class="w3-container">
            <form name="replyFrm" id="replyFrm" action="reply_writeProc" method="post">
                <p><label>답변하기</label>
                    <textarea class="w3-input w3-border" rows="7" id="reply_content" name="reply_content"
                        style="resize: none;"></textarea>
                </p>

                <div class="w3-section w3-center">
                    <input type="button" class="w3-button w3-cyan" value="답변하기(영자)" id="rwBtn">
                </div>
            </form>
        </div>
    </c:if>

</body>

</html>