<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="listForm">
	<c:forEach items="${list}" var="diskDto">
		<div class="w3-card w3-padding-4 item">
			<div class="w3-row">
				<div class="w3-col" style="width: 70px;">
					<img width="100%" src="${diskDto.disk_image}">
				</div>
				<div class="w3-rest">
					<div class="w3-large itemInner">${diskDto.disk_name}</div>
					<div class="">
						<span class="w3-left">${diskDto.disk_price}</span> <span class="w3-right">
							<button type="button" class="w3-button w3-round-large w3-cyan">&gt;</button>
						</span>
					</div>
				</div>
				<div class="w3-col w3-red itemContent" style="white-space: normal;">
					<span>회사:${diskDto.disk_company}</span>/<span>디스크크기: ${diskDto.disk_type}</span>/
					<span>디스크용량: ${diskDto.disk_volume}</span>/
					<c:if test="${diskDto.disk_category eq 'SSD'}">
					<span class="w3-label w3-green">${diskDto.disk_category}</span>
					</c:if>
					<c:if test="${diskDto.disk_category eq 'HDD'}">
					<span class="w3-label w3-red">${diskDto.disk_category}</span>
					</c:if>
					</div>
			</div>
		</div>
	</c:forEach>
</div>