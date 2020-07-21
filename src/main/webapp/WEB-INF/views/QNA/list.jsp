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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        .list_search_row {
            display: grid;
            grid-template-columns: 80px 1fr 70px 80px;
            max-width: 600px;
            margin: auto;
        }        

        .trNo:Hover {
            background-color: #eeeeee;
            cursor: pointer;
        }
        
        /* @media only screen and (max-width: 600px) {
         .min {
           display: none;
        } */
}
                
    </style>
    <script>
        $(function () {
           
        	var nowPage=${PAGEINFO.nowPage}
        	
        	$(".trNo").click(function () {
        		//alert(nowPage);
                var no = $(this).find(".qnaNo").text().trim();
                console.log(no);
                location.href = "content?qna_no="+no+"&nowPage="+nowPage;
            });
       

           $("#sBtn").click(function () {
            alert("검색버튼클릭");
            //검색단어 id="word"
           });

          $("#wBtn").click(function () {
            //alert("글쓰기버튼클릭");
            location.href = "writeForm";            
          });
          
          
     });//end
    </script>
</head>

<body>

    <div class="w3-container">
        <h2 align="center"> 질문 게시판  </h2>        
        <table class="w3-table w3-bordered w3-border">

            <!-- 헤더 + 리스트 ------------------------------------------------------------------->
            <tr>
                <th width="5%" class="qnaNo">#</th>
                <th width="50%">Title</th>
                <th width="15%">Writer</th>
                <th width="15%" class="min">Date</th>
                
            </tr>
            
            
            <c:forEach items="${LIST }" var="list">
                <tr class="trNo" onclick="click(this)">
                    <td class="qnaNo">${list.qna_no}</td>
                    <td>${list.qna_title}&nbsp;[${list.qna_reply_cnt}]</td>
                    <td>${sessionScope.member_id}</td>
                    <td class="min">${list.qna_regdate}</td>                    
                </tr>
            </c:forEach>   
          </table>


            <!-- 페이징 ---------------------------------------------------------------->
            <table class="w3-table w3-bordered w3-border">
            <tr>
                <td style="text-align: center;">
                    <div class="w3-center">
                        <div class="w3-bar w3-border">
                            <!-- 이전페이지처리 -->
                                                     
                            <c:if test="${PAGEINFO.nowPage ne 1 }">
                                <a href="../QNA/list?nowPage=${PAGEINFO.nowPage-1}"
                                    class="w3-bar-item w3-button">&laquo;</a>
                            </c:if>
                            
                            <!-- 페이지 처리 -->
                            <c:forEach var="i" begin="${PAGEINFO.startPage }" end="${PAGEINFO.endPage }" step="1">
                            <a href="../QNA/list?nowPage=${i}" class="w3-bar-item w3-button">${i}</a>
                            </c:forEach>
                            
                            <!-- 다음페이지처리 -->
                                                 
                            <c:if test="${PAGEINFO.nowPage ne PAGEINFO.totalPage }">
                                <a href="../QNA/list?nowPage=${PAGEINFO.nowPage+1 }"
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
                                <input type="submit" class="w3-button w3-cyan" value="검색" >
                                <button type="button" class="w3-button w3-blue" id="wBtn">
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