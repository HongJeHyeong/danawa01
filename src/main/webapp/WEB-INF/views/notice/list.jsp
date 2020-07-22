<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>공지 사항</title>
	<!-- CDN - Google Icons -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!-- CDN - Font Awesome 4 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- CDN - W3CSS -->
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- CDN - sw-1.0.0.css -->
	<link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">

	<!-- CDN - jquery 3.4.1 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- CDN - bootstrap 3.4.1 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/member.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

	<style>
		* {
			margin: 0px;
			padding: 0px;
		}

		/* ul{
   list-style:none;
   }
.noticediv {
	display: inline-block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.rows{
	cursor:pointer;
} */

		#aa {
			margin: auto;
			max-width: 700px;
		}


		.row {
			/* border: 1px solid cyan; */
			margin: 5px 7px;
			cursor: pointer;
		}

		.row1 {
			display: grid;
			grid-template-columns: 1fr 50px;
			/* background: violet; */
			margin: 10px 0;
			padding-left: 10px;
		}

		.row2 {
			display: grid;
			grid-template-columns: 150px 170px;
			/* background: yellowgreen; */
			margin: 5px;
		}

		.title {
			font-weight: bolder;
		}
	</style>
	<script>
		$(document).ready(function () {
			$(".row").click(function () {
				var notice_no = $(this).find("#notice_no").text();
				var nowPage = $(this).find("#nowPage").val();
				/* console.log(nowPage + " / "+ no); */
				location = "../notice/content?notice_no=" + notice_no + "&nowPage=" + nowPage
			});
		});

	</script>
</head>

<body>
	<div class="sw-topnav-margin">&nbsp;</div>
	<!-- responsive template by SW ----------------------------------------------------------- -->
	<!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->


	<!-- CONTENT ------------------------------------------------------------------------------------ -->
	<div class="sw-center">
		<!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
		<!-- 400~1200 사이로 조절 가능 ---------------------------------------------------------------------------------->
		<div class="sw-container-1000">
			<div class="w3-container">
				<!--  main content start here!!!----------------------------------------------------------- -->

				<div align="center">
					<h2>공지 사항</h2>
				</div>
        <div class="w3-card">
				<c:forEach items="${list}" var="data">
						<div class="row" onclick="bbaku(this)">
							<input type="hidden" name="nowPage" id="nowPage" value="${nowPage }">
							<div class="row1">
								<span class="title">${data.notice_title}</span>
								<span class="w3-tag" name="notice_no" id="notice_no">${data.notice_no}</span>
							</div>
							<div class="row2">
								<span class="w3-gray-text w3-small"> ${data.notice_regdate} | ${data.notice_enddate}
								</span>
							</div>
						</div>
						<!-- ................................................................. -->
        </c:forEach>
        </div>




				<!-- 페이징처리 출력 부분 -->
				<!-- mv.addObject("PAGEINFO",pageInfo); -->
				<table id="" style="margin:auto">
					<tbody>
						<tr>
							<td style="text-align:center;">
								<!-- prev 출력 -->


								<div class="w3-bar">
									<c:if test="${PAGEINFO.nowPage != 1 }">
										<!--c:if test="${PAGEINFO.nowPage ne 1 }"-->
										<button class="w3-bar-item w3-button"
											onclick="location='../notice/list?nowPage=${PAGEINFO.nowPage-1 }'">
											&laquo;</button>
									</c:if>
									<c:forEach var="count" begin="${PAGEINFO.startPage }" end="${PAGEINFO.endPage }">
										<button class="w3-bar-item w3-button"
											onclick="location='../notice/list?nowPage=${count}'">${count}</button>
									</c:forEach>
									<c:if test="${PAGEINFO.nowPage!=PAGEINFO.totalPage }">
										<button class="w3-bar-item w3-button"
											onclick="location='../notice/list?nowPage=${PAGEINFO.nowPage-1 }'">
											&raquo;</button>
									</c:if>
								</div>
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
										<div class="w3-bar">
											<button type="button" class="w3-bar-item w3-button"
												onclick="location='../notice/writeForm'">글쓰기</button>
											<!-- <button  type="button" id="wBtn" onclick="location='../board/writeFrm'">글쓰기</button> -->
										</div>
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


	<tf:TopNav grade="${grade}" />

</body>

</html>