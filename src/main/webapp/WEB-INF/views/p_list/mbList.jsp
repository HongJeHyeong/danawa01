<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div>
	<c:forEach items="${list}" var="dto">
		<div class="w3-card w3-padding-4 item">
			<div class="w3-row">
				<div class="w3-col" style="width: 70px;">
					<img width="70px;" src="${dto.mb_image}">
				</div>
				<div class="w3-rest">

					<div class="w3-large itemInner">${dto.mb_name}</div>
					<div class="">
						<span class="w3-left"><fmt:formatNumber value="${dto.mb_price}" type="currency" /></span> <span class="w3-right">
							<button type="button" class="w3-button w3-round-large w3-cyan">&gt;</button>
						</span>
					</div>
				</div>
				<div class="w3-col w3-red itemContent" style="white-space: normal;">
					<span>회사:${dto.mb_company}</span>/<span>CPU소켓:${dto.mb_socket}</span>/
					<span>세부 칩셋:${dto.mb_chipset}</span>/<span>메모리슬롯:${dto.mb_ramslot}</span>
					/<span>등록일:${dto.mb_regdate}</span>
				</div>
			</div>
		</div>
	</c:forEach>
</div>

