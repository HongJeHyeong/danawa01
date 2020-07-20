
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"
	trimDirectiveWhitespaces="true" trimDirectiveWhitespaces="true"%>
<%@ attribute name="grade" type="java.lang.Integer" required="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<header class="topnav w3-card-4" id="topNav">
	<a href="#" class="active">다너놔</a>
	<!--  ......................................................................-->
	<a href="../board/assemble">PC 견적</a>
	<!--  ......................................................................-->
	<a href="../board/list">조립게시판</a>
	<!--  ......................................................................-->
	<a href="../notice/list">공지사항</a>
	<!--  ......................................................................-->
	<a href="../QNA/list">QNA</a>
	<!--  ......................................................................-->
	<c:if test="${ grade>=1 }">
		<a href="../member/mypage">마이페이지${grade}</a>
	</c:if>
	<!--  ......................................................................-->
	<c:if test="${ grade>=2 }">
		<a href="#">관리자</a>
	</c:if>
	<!--  ......................................................................-->
	<c:if test="${ grade==null || grade<1 }">
		<a href="../login">로그인</a>
	</c:if>
	<!--  ......................................................................-->


	<a href="javascript:void(0);" class="icon"
		onclick="responsiveMenuPopUp()"> <i class="fa fa-bars"></i>
	</a>
</header>


