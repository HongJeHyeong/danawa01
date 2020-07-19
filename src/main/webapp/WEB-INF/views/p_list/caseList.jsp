<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="listForm">
	<c:forEach items="#{list}" var="dto">
		<div class="w3-card w3-padding-4 item">
			<div class="w3-row">
				<div class="w3-col" style="width: 70px;">
					<img width="100%" src="./01.jpg">
				</div>
				<div class="w3-rest">

					<div class="w3-large itemInner">상품명</div>
					<div class="">
						<span class="w3-left">가격</span> <span class="w3-right">
							<button type="button" class="w3-button w3-round-large w3-cyan">&gt;</button>
						</span>
					</div>
				</div>
				<div class="w3-col w3-red itemContent" style="white-space: normal;">
					상세내용</div>
			</div>
		</div>
	</c:forEach>
</div>