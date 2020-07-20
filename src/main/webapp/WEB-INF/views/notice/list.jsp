<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Insert title here</title>
<!-- CDN - Google Icons -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- CDN - Font Awesome 4 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CDN - W3CSS -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- CDN - sw-1.0.0.css -->
<link rel="stylesheet"
	href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">

<!-- CDN - jquery 3.4.1 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- CDN - bootstrap 3.4.1 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/member.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<style>
* {
	margin: 0px;
	padding: 0px;
}
ul{
   list-style:none;
   }
.noticediv {
	display: inline-block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
<script>
	
</script>
</head>
<body>
	<!-- responsive template by SW ----------------------------------------------------------- -->
	<!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
	<div class="sw-topnav-margin">&nbsp;</div>

	<!-- CONTENT ------------------------------------------------------------------------------------ -->
	<div class="sw-center">
		<!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
		<!-- 400~1200 사이로 조절 가능 ---------------------------------------------------------------------------------->
		<div class="sw-container-1000">
			<div class="w3-container">
				<!--  main content start here!!!----------------------------------------------------------- -->

				<div style="margin-top: 15px;">
					<h2>공지사항</h2>
				</div>

				<ul class="w3-ul w3-hoverable">
					<li><div class="noticediv" style="width: 10%;">#</div>
						<div class="noticediv" style="width: 30%;">제목</div>
						<div class="noticediv" style="width: 10%;">작성자</div>
						<div class="noticediv" style="width: 20%;">시작일</div>
						<div class="noticediv" style="width: 20%;">마감일</div>
						
				<c:forEach items="${list}" var="data">
					<li><div class="noticediv" style="width: 10%;">${data.notice_no}</div>
						<div class="noticediv" style="width: 30%;">${data.notice_title}</div>
						<div class="noticediv" style="width: 10%;">관리자</div>
						<div class="noticediv" style="width: 20%;">${data.notice_regdate}</div>
						<div class="noticediv" style="width: 20%;">${data.notice_enddate}</div></li>
				</c:forEach>
					</ul>
				
	<!-- 페이징처리 출력 부분 -->
<!-- mv.addObject("PAGEINFO",pageInfo); -->
	<table id="" style="margin:auto" >
		<tbody >
			<tr>
				<td style="text-align:center;">
				<!-- prev 출력 -->
				<%-- <c:if test="${PAGEINFO.nowPage == 1 }">		 <!--c:if test="${PAGEINFO.nowPage eq 1 }"-->
					[Prev]
				</c:if> --%>
				
				<c:if test="${PAGEINFO.nowPage != 1 }">		 <!--c:if test="${PAGEINFO.nowPage ne 1 }"-->
					<a href="../notice/list?nowPage=${PAGEINFO.nowPage-1 }"> [Prev]</a>
				</c:if>
				<!-- [1] [2] [3] 출력-->
				<c:forEach var="count" begin="${PAGEINFO.startPage }" end="${PAGEINFO.endPage }">
				<a href="../notice/list?nowPage=${count }">[${count}]</a> 
				</c:forEach>
				<!-- next 출력 -->
				<%-- <c:if test="${PAGEINFO.nowPage==PAGEINFO.totalPage }">
				[next]
				</c:if> --%>
				<c:if test="${PAGEINFO.nowPage!=PAGEINFO.totalPage }">
				<a href="../notice/list?nowPage=${PAGEINFO.nowPage+1 }">[next]</a>
				</c:if>
				</td>
			</tr>
		</tbody>
	</table>
<!-- 기타(글쓰기) 부분 -->
<form name="wBtnFrm" id="wBtnFrm" method="get">
	<table id="" width="700">
		<tbody>
			<tr>
			<td style="text-align:center;">
			<c:if test="${sessionScope.grade >=2}">
			<button  type="button" id="wBtn" onclick="location='../board/writeFrm'">글쓰기</button>
			</c:if>
			</td>
			</tr>
		</tbody>
	</table>
</form>			



				<!-- main content end----------------------------------------------------------------------- -->
			</div>
		</div>
	</div>
	<!-- main content end----------------------------------------------------------------------- -->


</body>
</html>