<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UpdateForm</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>

    </style>
    <script>
        $("#uBtn").click(function () {
            alert("확인 버튼 클릭");
            // $("#qnaWriteFrm").submit();
        });
    </script>

</head>

<body>

    <form class="w3-container w3-card-4" name="qnaWriteFrm" id="qnaWriteFrm" action="">
        <h2>Q&A 수정</h2>

        <p><label>작성자</label>
            <input class="w3-input w3-border" name="" id="" type="text" value="작성자ID" readonly></p>

        <p><label>제목</label>
            <input class="w3-input w3-border" name="" id="" type="text" value="기존제목"></p>

        <p><label>내용</label>
            <textarea class="w3-input w3-border" rows="5" id="" name="" style="resize: none;">기존글내용</textarea>
        </p>

        <!-- 댓글이 있을경우 띄움 -->
        <!-- <c:if test="sessionScope.grade >= 2">

            <p><label>답글</label>
                <textarea class="w3-input w3-border" rows="5" id="" name="" style="resize: none;">
답글내용
여긴 운영자 && 답글이 있을경우만
사용자는 답글 수정X, 수정폼에서 안보여줌
                </textarea>
            </p>

        </c:if> -->

        <!-- 답변내용 답글이 있을경우 띄움 --------------------------------------------------------------------------->
        <c:if test="has_reply_cnt > 0">
            <p><label>답변내용</label>
            <table class="w3-table w3-border w3-border">
                <tr>
                    <td style="text-align: right; right; color: darkgrey; font-size: small;">
                        1965-02-08 12:12:12
                        <!-- <input type="button" class="w3-button w3-tiny w3-cyaN" value="수정" id="rdBtn"> -->
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea class="w3-input w3-border" rows="7" id="reply_content" name="reply_content"
                            style="resize: none;">
답글이 없으면 테이블 안보임.
답글이 달리면 이부분에 내용보임.
c:if test="has_reply  0">글보임  /c:if
reply게시판의 content뿌림.
(LEFT JOIN으로 reply_content를 if조건으로 사용)
                         </textarea>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: right; right; color: darkgrey; font-size: small;">
                        1965-07-01 12:12:12
                        <!-- <input type="button" class="w3-button w3-tiny w3-cyaN" value="수정" id="rdBtn"> -->
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea class="w3-input w3-border" rows="7" id="reply_content" name="reply_content"
                            style="resize: none;">
[1965-02-09]
2번째 글 view           
                    </textarea>
                    </td>
                </tr>
                <!-- <c:forEach var="" items="">
                        <tr style="text-align: right;">
                            <td>
                                ${ .날짜}                                
                            </td>
                        </tr>
                        <tr>
                            <textarea class="w3-input w3-border" rows="7" id="reply_content" name="reply_content"
                                style="resize: none;">${ .답글내용}
                            </textarea>
                        </tr>
                    </c:forEach> -->

            </table>
            </p>
        </c:if>



        <!-- 버튼 ---------------------------------------------------------------------->
        <div class="w3-section w3-center">
            <input type="submit" class="w3-button w3-cyan" value="확인" id="uBtn">
            <input type="button" class="w3-button w3-cyan" value="취소" onclick="history.back()">
        </div>
    </form>
</body>

</html>