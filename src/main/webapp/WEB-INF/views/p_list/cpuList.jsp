<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div>
	<c:forEach items="${list}" var="dto">
		<div class="w3-card w3-padding-4 item">
			<div class="w3-row">
				<div class="w3-col" style="width: 70px;">
					<img width="70px;" src="${dto.cpu_image}">
				</div>
				<div class="w3-rest">

					<div class="w3-large itemInner">${dto.cpu_name}</div>
					<div class="">
						<span class="w3-left"><fmt:formatNumber value="${dto.cpu_price}" type="currency" /></span> <span class="w3-right">
							<button type="button" class="w3-button w3-round-large w3-cyan">&gt;</button>
						</span>
					</div>
				</div>
				<div class="w3-col w3-red itemContent" style="white-space: normal;">
					<div class="w3-col w3-red itemContent" style="white-space: normal;">
						<c:if test="${dto.cpu_company eq 'AMD'}">
							<span class="w3-label w3-green">${dto.cpu_company}</span>
						</c:if>
						<c:if test="${dto.cpu_company eq 'Intel'}">
							<span class="w3-label w3-blue">${dto.cpu_company}</span>
						</c:if>
						/<span>소켓${dto.cpu_socket}</span>/<span>${dto.cpu_core}코어</span>/<span>${dto.cpu_thread}쓰레드</span>/<span>클럭:${dto.cpu_clock}</span>/
						<span>내장그래픽:</span>
						
						<c:if test="${dto.cpu_graphic eq 1}">
						   <span class="w3-label w3-green"><c:out value="있음"/></span>
						</c:if>
						<c:if test="${dto.cpu_graphic eq 0}">
						    <span class="w3-label w3-red"><c:out value="없음"/></span>
						</c:if>/				
						<span>내장쿨러:</span>
						<c:if test="${dto.cpu_cooler eq 1}">
						    <span class="w3-label w3-green"><c:out value="있음"/></span>
						</c:if>
						<c:if test="${dto.cpu_cooler eq 0}">
						  <span class="w3-label w3-red"><c:out value="없음"/></span>
						</c:if>
						/<span>등록일: ${dto.cpu_regdate}</span>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>

