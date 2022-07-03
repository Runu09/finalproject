<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- breadcrumb start -->
<script type="text/javascript">
	$(function() {
		
		$('#btList').click(function() {
			location.href = "<c:url value='/lost/list.do'/>";
		});
		$('#btEdit').click(function() {
			location.href = "<c:url value='/lost/edit.do?bNo=${vo.BNo}'/>";
		});
		$('#btDel')
				.click(
						function() {
							if (confirm('삭제하시겠습니까?')) {
								location.href = "<c:url value='/lost/delete.do?bNo=${vo.BNo }'/>";
							} else {
								event.preventDefault();
							}

						});
		
		
	}); //ready()

	function edit(i, cno, bno) {
		var origin=$('.comment-detail').eq(i).find('p').text();
		var res="<form id='frmEdit"+i+"' action='<c:url value='/lost/cmtEdit.do'/>' method='post'>";
		res+="<input type='hidden' value='"+cno+"' name='cNo'>";
		res+="<input type='hidden' value='"+bno+"' name='bNo'>";
		res+="<textarea style='width: 80%; height: 70px;' name='cContent'>"+origin+"</textarea>";
		res+="<button class='btn btn-primary me-3' style='margin-bottom: 28px;margin-left: 10px;'type='submit'>등록</button>";
		res+="<input type='button' value='취소'  class='btn btn-primary me-3' style='background-color:red;border-color:red;margin-bottom: 28px' onclick='editCancel("+i+")'>";	
		res+="</form>";
		$('.comment-detail').eq(i).append(res);
		
		
	}
	function editCancel(i){
		$('#frmEdit'+i).hide();
 	}
	function del(cno,bno, groupno, step) {
		if (confirm('삭제하시겠습니까?')) {
			location.href = "<c:url value='/lost/cmtDel.do?cNo="+cno+"&bNo="+bno+"&groupNo="+groupno+"&step="+step+"'/>";
		} else {
			event.preventDefault();
		}
		
		
	}
	function reply(i, groupNo, step, sortNo, bNo){
		/* alert('답글'); */
		var res="<form id='frmReply"+i+"' action='<c:url value='/lost/replyWrite.do'/>' method='post'>";
		res+="<input type='hidden' value='"+groupNo+"' name='cGroupno'>";
		res+="<input type='hidden' value='"+step+"' name='cStep'>";
		res+="<input type='hidden' value='"+sortNo+"' name='cSortno'>";
		res+="<input type='hidden' value='"+bNo+"' name='bNo'>";
		res+="<textarea style='width: 80%; height: 70px;' name='cContent'></textarea>";
		res+="<button class='btn btn-primary me-3' style='margin-bottom: 28px;margin-left: 10px;'type='submit'>등록</button>";
		res+="<input type='button' value='취소'  class='btn btn-primary me-3' style='background-color:red;border-color:red;margin-bottom: 28px' onclick='replyCancel("+i+")'>";	
		res+="</form>";
		$('.reply-btn').eq(i).parent().append(res);
	}
	function replyCancel(i){
		$('#frmReply'+i).hide();
 	}
</script>


<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>유실물 조회</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->

<div class="bg-inner small-section pb-0">
	<div class="container">

		<div class="flight-detail-sec full_width-detail">

			<div class="detail-bar">
				<div class="detail-wrap wow">
					<div class="row">
						<div class="col-md-8" style="padding: 20px 100px">
							<!-- 상세보기 출력 -->
							<p style="color: black; font-size: 18px">
								<label for="" style="width: 200px">번호</label> <span>${vo.BNo }</span>
							<hr>
							</p>
							<p style="color: black; font-size: 18px">
								<label for="" style="width: 200px">제목</label> <span>${vo.BTitle}</span>
							<hr>
							</p>
							<p style="color: black; font-size: 18px">
								<label for="" style="width: 200px">등록일</label> <span> <fmt:formatDate
										value="${vo.BRegdate}" pattern="yyyy-MM-dd" /></span>
							<hr>
							</p>

							${vo.BContent}

						</div>


						<div class="col-md-4">
							<c:if test="${empty vo.FName}">
								<img src="<c:url value='/images/no_image.png'/>" alt="이미지없음"
									style="width: 400px; height: 400px">
							</c:if>
							<c:if test="${!empty vo.FName}">
							
   
								<img src="<c:url value='/img_upload/${vo.FName }'/>"
									alt="${vo.BTitle}" style="width: 400px; height: 400px">
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center;">
			<button class="btn btn-primary me-3"
				style="background-color: #4291b8; border-color: #4291b8" id="btList">목록</button>
			<!-- 글작성자인 경우 -->

			<c:if test="${sessionScope.memId==vo.BId }">
				<button class="btn btn-primary me-3"
					style="background-color: blue; border-color: blue" id="btEdit">수정</button>
				<button class="btn btn-primary me-3"
					style="background-color: red; border-color: red" id="btDel">삭제</button>
				<br>
				<br>
			</c:if>
			<br> <br>


		</div>
	</div>

</div>
<div class="bg-inner small-section pb-0" style="margin-top: -50px">
	<div class="container">

		<div class="flight-detail-sec full_width-detail">

			<div class="detail-bar">
				<div class="detail-wrap wow">
					<section class="section-b-space bg-white"
						style="padding-top: 0; padding-bottom: 20px;">
						<div class="container">
							<div class="row" style="margin-bottom: 20px">
								<div class="col-lg-11" style="margin: 0 auto">
									<div class="blog-single-detail">


										<div class="comment-section">
											<h4 class="comment" id="comment">댓글 목록</h4>
											<div class="comment-wrapper">
												<div class="comment-box">
													<c:if test="${empty list}">
												등록된 댓글이 없습니다.
												</c:if>
													<c:if test="${!empty list}">
														<c:set var="i" value="0" />
														<c:forEach var="vo" items="${list}">

															<c:if test="${vo.CStep >0}">
																<!-- 답글이면 class 변경 -->
																<div class="media inner-comment" style="border-bottom: 1px solid #dddddd;">
															</c:if>
															<c:if test="${vo.CStep ==0}">
																<div class="media"
																	style="border-bottom: 1px solid #dddddd; margin-bottom: 10px;padding-top:10px">
															</c:if>
															<div class="media-body" id="media-body${vo.CNo }">
																<c:if test="${vo.CDelflag=='Y' }">
																	<div class="reply-btn"
																		style="margin: 20px 0px; text-align: left; color: red">
																		삭제된 댓글입니다.</div>
																	<!-- <div style="height: 50px; color:gray;font-size:16px">삭제된 댓글입니다.</div> -->
																</c:if>
																<c:if test="${vo.CDelflag=='N' }">
																	<div class="title" style="border-bottom: none">
																		<div class="comment-user">
																			<i class="fa fa-user"></i>
																			<h6 style="text-transform: none">${vo.CId }</h6>
																		</div>
																		<div class="comment-date">
																			<i class="fas fa-clock"></i>
																			<h6>
																				<fmt:formatDate value="${vo.CRegdate }"
																					pattern="yyyy-MM-dd" />
																			</h6>
																		</div>

																		<c:if test="${vo.CId==sessionScope.memId }">
																			<a style="margin: 0px 10px;color:blue"
																				onclick="javascript:edit(${i},${vo.CNo },${vo.BNo });">수정</a>
																			<a style="color: red" onclick="javascript:del(${vo.CNo },${vo.BNo }, ${vo.CGroupno }, ${vo.CStep });">삭제</a>
																			<!-- href="#"  -->
																
																		</c:if>
																	</div>
																	<div class="comment-detail">
																		<p>${vo.CContent }</p>
																	</div>
																	<div class="reply-btn" style="padding-bottom: 5px">
																		<a href="#media-body${vo.CNo }"
																			onclick="javascript:reply(${i},${vo.CGroupno},${vo.CStep }, ${vo.CSortno }, ${vo.BNo });"><i
																			class="fa fa-reply pe-2"></i> 답글</a>
																	</div>
																</c:if>
															</div>
												</div>
												<c:set var="i" value="${i+1 }" />
												</c:forEach>
												</c:if>
											</div>

										</div>
									</div>

								</div>
							</div>
						</div>
				</div>
				</section>

			</div>




		</div>
	</div>

</div>
</div>


</div>
<div class="bg-inner small-section pb-0" style="margin-top: -60px">
	<div class="container">

		<div class="flight-detail-sec full_width-detail">

			<div class="detail-bar">
				<div class="detail-wrap wow">

					<form id="frmCmt" action="<c:url value='/lost/cmtWrite.do'/>"
						method="post">
						<input type="hidden" value="${vo.BNo }" name="bNo">
						<div class="row">

							<div class="form-group col-md-11" style="margin: 0 auto">
								<h4 class="comment">댓글 작성</h4>
								<textarea class="form-control" id="exampleTextarea"
									name="cContent" placeholder="내용을 입력하세요" required="" rows="4"></textarea>
							</div>
						</div>
						<div class="submit-btn"
							style="text-align: right; margin-right: 59px; margin-top: 10px">
							<button class="btn btn-solid" type="submit">등록</button>
						</div>
					</form>


				</div>




			</div>
		</div>
		<div></div>
		<br> <br>

	</div>
</div>


</div>
<%@include file="../inc/footer.jsp"%>