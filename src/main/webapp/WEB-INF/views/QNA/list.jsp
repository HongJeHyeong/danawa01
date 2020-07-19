<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <title>list</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .list_search_row {
            display: grid;
            grid-template-columns: 80px 1fr 70px 80px;
            max-width: 600px;
            margin: auto;
        }

        #wBtn {}

        .trNo:Hover {
            background-color: #eeeeee;
            cursor: pointer;
        }
    </style>
    <script>
        $(function () {
            $(".trNo").click(function () {
                var no = $(this).find(".qnaNo").text().trim();
                //console.log(no);
                //location.href = "" + no;
            });
        });

        $("#sBtn").click(function () {
            alert("검색버튼클릭");
            //검색단어 id="word"
        });

        $("#wBtn").click(function () {
            alert("글쓰기버튼클릭");
            // location.href = "writeForm.do";
        });

    </script>
</head>

<body>

    <div class="w3-container">
        <h2 align="center">Q&A 게시판</h2>
        <!-- <input class="w3-button w3-cyan w3-right" value="글쓰기" name="wBtn" id="wBtn"> -->
        <table class="w3-table w3-bordered w3-border">

            <!-- 헤더 + 리스트 ------------------------------------------------------------------->
            <tr>
                <th width="5%" class="qnaNo">No</th>
                <th width="50%">Title</th>
                <th width="15%">Writer</th>
                <th width="15%">Date</th>
                <th width="8%">Reply</th>
            </tr>

            <!--
            <c:forEach items="" var="">
                <tr class="trNo" onclick="click(this)">
                    <td class="qnaNo">${.no}</td>
                    <td>${ .title}</td>
                    <td>${ .writer}</td>
                    <td>${ .date}</td>
                    <td>${ .reply_cnt}</td>
                </tr>
            </c:forEach>
            -->



            <tr class="trNo">
                <td>3</td>
                <td>CPU가 안이뻐요</td>
                <td>바크범수</td>
                <td>1998.01.30</td>
                <td>1</td>
            </tr>
            <tr class="trNo">
                <td>2</td>
                <td>512GB램은 안나오나요?</td>
                <td>범수킹</td>
                <td>2020.07.15</td>
                <td>0</td>
            </tr>

            <tr class="trNo">
                <td>1</td>
                <td>조낸 구려요</td>
                <td>박범수</td>
                <td>1965.06.21</td>
                <td>2</td>
            </tr>


            <!-- 페이징 ---------------------------------------------------------------->
            <tr>
                <td colspan="5" style="text-align: center;">
                    <div class="w3-center">
                        <div class="w3-bar w3-border">
                            <!-- 이전페이지처리 -->
                            <!-- <c:if test="${PAGEINFO.nowPage eq 1}">
                                &laquo;
                            </c:if> -->
                            <c:if test="${PAGEINFO.nowPage ne 1 }">
                                <a href="~~/list.do?nowPage=${PAGEINFO.nowPage-1}"
                                    class="w3-bar-item w3-button">&laquo;</a>
                            </c:if>
                            <!-- 페이지 처리 -->
                            <a href="~~/list.do?nowPage=${i}" class="w3-bar-item w3-button">${i}</a>
                            <!-- 다음페이지처리 -->
                            <!-- <c:if test="${PAGEINFO.nowPage eq PAGEINFO.totalPage }">
                                &raquo;
                            </c:if> -->
                            <c:if test="${PAGEINFO.nowPage ne PAGEINFO.totalPage }">
                                <a href="~~/list.do?nowPage=${PAGEINFO.nowPage+1 }"
                                    class="w3-bar-item w3-button">&raquo;</a>
                            </c:if>

                        </div>
                    </div>
                </td>
            </tr>
        </table>


        <!-- 검색창--------------------------------------------------->
        <div class="w3-center">
            <form name="sFrm" id="sFrm" action="" method="get">
                <table class="w3-table w3-bordered w3-border">
                    <tr>
                        <td>
                            <div class="list_search_row w3-cyan">
                                <select class="w3-select w3-border">
                                    <option value="title">제목</option>
                                    <option value="writer">작성자</option>
                                </select>
                                <input class="w3-input w3-border" type="text" id="word" name="word" required>
                                <input type="button" class="w3-button w3-cyan" value="검색" name="sBtn" id="sBtn">
                                <button type="button" class="w3-button w3-blue" name="wBtn" id="wBtn">
                                    <i class="material-icons">mode_edit</i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>

    </div>

</body>

</html>