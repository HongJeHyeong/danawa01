<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
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
</style>
<script>
$(document).ready(function(){
	
});
	
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
			<label>제목</label>
			<div class="w3-input w3-border">${list.notice_title } </div>
			
			<hr/>
			<label>시행일</label>
			<div class="w3-input w3-border">${list.notice_regdate}~${list.notice_enddate} </div>
			<hr/>
			<label>내용</label>
            <textarea class="w3-input w3-border" rows="5" id="notice_content" name="notice_content" style="resize: none;"
                readonly>${list.notice_content}</textarea>
				<!-- main content end----------------------------------------------------------------------- -->
			</div>
				<div class="w3-bar">
			<c:if test="${sessionScope.grade >=2}">
			<button class="w3-bar-item w3-button" onclick="location='../notice/update?notice_no=${list.notice_no}&nowPage=${nowPage }'">글수정</button>
			<button class="w3-bar-item w3-button" onclick="location='../notice/del?notice_no=${list.notice_no}&nowPage=${nowPage }'">글삭제</button>
			</c:if>
			<button class="w3-bar-item w3-button" onclick="location='../notice/list?nowPage=${nowPage }'">목록으로</button>
			</div>
		</div>
	</div>
	<!-- main content end----------------------------------------------------------------------- -->

<tf:TopNav grade="${grade}" />
</body>
</html>