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
    <style>
        pre {
            font-family: inherit;
        }
    </style>
    <script>
        $("#rwBtn").click(function () {
            alert("답글쓰기 버튼 클릭");
            // $("#replyFrm").submit();
        });

        $("#uBtn").click(function () {
            alert("수정하기 버튼 클릭");
            // location.href = "~~/updateForm.do?글번호&?현재페이지";
        });

        $("#dBtn").click(function () {
            alert("삭제하기 버튼 클릭");
            //location.herf="~~/deleteProc.do?글번호";
        });

        $("rdBtn").click(function () {
            alert("리플삭제 버튼 클릭");
            // location.href="~~/replyDeleteProc.do?글번호&답글번호";
        });
    </script>
</head>

<body>

    <div class="w3-container w3-card-4">
        <h2>Q&A 상세보기</h2>

        <p><label>작성자</label>
            <input class="w3-input w3-border" name="writer" id="writer" type="text" value="작성자ID" readonly></p>

        <p><label>제목</label>
            <input class="w3-input w3-border" name="title" id="title" type="text" readonly value="글제목받아옴"></p>


        <p><label>내용</label>
            <textarea class="w3-input w3-border" rows="5" id="content" name="content" style="resize: none;"
                readonly>글내용받아옴</textarea>
        </p>


        <!-- 답변내용 --------------------------------------------------------------------------->
        <c:if test="has_reply_cnt > 0">
            <p><label>답변내용</label>
            <table class="w3-table w3-border w3-border">
                <tr>
                    <td style="text-align: right; color: darkgrey; font-size: small;">
                        1965-02-08 12:12:12
                    </td>
                </tr>
                <tr>
                    <td>
                        <pre class="w3-input w3-border" id="reply_content" name="reply_content" style="resize: none;"
                            readonly>
답글이 없으면 이부분 안보임.
답글이 달리면 이부분에 내용보임.
c:if test="has_reply > 0">글보임 /c:if
reply게시판의 content뿌림.
(LEFT JOIN으로 reply_content를 if조건으로 사용)
답글삭제를 누르면 has_reply -1시킴(카운트)
답글이 없으면 이부분 안보임.
답글이 달리면 이부분에 내용보임.
c:if test="has_reply > 0">글보임 /c:if
reply게시판의 content뿌림.
(LEFT JOIN으로 reply_content를 if조건으로 사용)
답글삭제를 누르면 has_reply -1시킴(카운트)
                        </pre>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: right; right; color: darkgrey; font-size: small;">
                        1965-07-01 12:12:12
                        <c:if test="${sessionScope.grade >= 2}">
                            <input type="button" class="w3-button w3-tiny w3-cyaN" value="삭제" id="rdBtn">
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <pre class="w3-input w3-border" rows="7" id="reply_content" name="reply_content"
                            style="resize: none;" readonly>
[1965-02-09]
2번째 글 view
{sessionScope.grade >= 2 일경우
-답글삭제 버튼 보임
일반사용자의 경우 첫답변처럼 삭제버튼 안보임
                        </pre>

                    </td>
                </tr>
                
                <!-- <c:forEach var="" items="">
                <tr style="text-align: right; right; color: darkgrey; font-size: small;">
                    <td>
                        ${ .날짜}
                        <c:if test="${sessionScope.grade >= 2 || sessionScope.NO==작성자 회원 번호)">
                            <input type="button" class="w3-button w3-cyan" value="답글삭제(영자)" id="rdBtn">
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <pre class="w3-input w3-border" id="reply_content" name="reply_content"
                        style="resize: none;" readonly>
                            ${ .답글내용}
                    </pre>
                </tr>
            </c:forEach> -->

            </table>
            </p>
        </c:if>


        <!-- 버튼그룹 --------------------------------------------------------------------------->
        <div class="w3-section w3-center">
            <input type="button" class="w3-button w3-cyan" value="목록보기" onclick="history.back()">
            <c:if test="${sessionScope.grade==1 || sessionScope.userNo==writerNo}">
                <input type="button" class="w3-button w3-red" value="수정(내글)" id="uBtn">
            </c:if>
            <c:if test="${sessionScope.USERID==admin || sessionScope.USERID==작성자}">
                <input type="button" class="w3-button w3-green" value="삭제(내글or영자)" id="dBtn">
            </c:if>
        </div>
    </div>

    <!-- 운영자만 보임 ------------------------------------------------------------------------->
    <c:if test="${sessionScope.grade >= 2}">
        <div class="w3-container w3-card-4">
            <form name="replyFrm" id="replyFrm" action="reply_content" method="post">
                <p><label>답변하기</label>
                    <textarea class="w3-input w3-border" rows="7" id="reply_content" name="reply_content"
                        style="resize: none;">
c:if/c:if 사용
${sessionScope.grade >= 2 일경우만 보임
reply게시판
qna_no + q_reply_qna_no //
답변하기 버튼 누르면 has_reply +1시킴(카운트)
                </textarea>
                </p>

                <div class="w3-section w3-center">
                    <input type="button" class="w3-button w3-cyan" value="답변하기(영자)" id="rwBtn">
                </div>
            </form>
        </div>
    </c:if>

</body>

</html>