<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div>
	<c:forEach items="${list}" var="dto">
		<div class="w3-card w3-padding-4 item">
			<div class="w3-row">
				<div class="w3-col" style="width: 70px;">
					<img width="70px;" src="${dto.disk_image}">
				</div>
				<div class="w3-rest">
					<div class="w3-large itemInner">${dto.disk_name}</div>
					<div class="">
						<span class="w3-left"><fmt:formatNumber value="${dto.disk_price}" type="currency" /></span> <span class="w3-right">
							<button type="button" class="w3-button w3-round-large w3-cyan">&gt;</button>
						</span>
					</div>
				</div>
				<div class="w3-col w3-red itemContent" style="white-space: normal;">
					<span class="w3-label w3-green">${dto.disk_category}</span>/<span>회사:${dto.disk_company}</span>/<span>디스크크기: ${dto.disk_type}</span>/
					<span>디스크용량: ${dto.disk_volume}</span>
					/<span>등록일: ${dto.disk_regdate}</span>
				</div>
			</div>
		</div>
	</c:forEach>
</div>

