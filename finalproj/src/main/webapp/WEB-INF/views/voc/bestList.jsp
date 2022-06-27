<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<ul class="blog-post">
	<c:if test="${empty blist }">
		<li>
			<div class="media">
				<div class="media-body align-self-center">
					<div>
						<h6>해당 글이 존재하지 않습니다</h6>
					</div>
				</div>
			</div>
		</li>
	</c:if>
	<c:if test="${!empty blist }">
		<c:forEach var="bvo" items="${blist}">
			<li>
				<div class="media">
					<div class="media-body align-self-center">
						<div>
							<h6>
								<fmt:formatDate value="${bvo.BRegdate}" pattern="yyyy-MM-dd" />
							</h6>
							<a href="<c:url value='/voc/updateCount?bNo=${bvo.BNo }'/>"><p>${bvo.BTitle}</p></a>
							<p>${bvo.BCount}hits</p>
						</div>
					</div>
				</div>
			</li>
			<br>
		</c:forEach>
	</c:if>
</ul>
