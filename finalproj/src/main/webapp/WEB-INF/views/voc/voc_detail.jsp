<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	
	//대댓글작성
	function reply(idx, bNo,groupno,step,sortno){
		var insReply = '';
		insReply += '<form name="vocReplyRe" method="post" action="<c:url value='/voc/comments_reply'/>">';
		insReply += '<input type="hidden" name="bNo" value='+bNo+'>';
		insReply += '<input type="hidden" name="cGroupno" value='+groupno+'>';
		insReply += '<input type="hidden" name="cStep" value='+step+'>';
		insReply += '<input type="hidden" name="cSortno" value='+sortno+'>';
		insReply += '<input type="text" name="cContent" id="cContent">';
		insReply += '<button type="submit">등록</button>';
		insReply += '<input type="button" value="취소" onclick="javascript:replyCancel('+idx+')">';
		insReply += '</form>';

		$("#replyBox"+idx).slideDown(500);
		$("#replyBox"+idx).html(insReply);
		
		$('form[name=vocReplyRe]').submit(function(){
			if($.trim($('#cContent').val()) == ""){
				alert("내용을 입력해주세요");
				$('#cContent').focus();
				event.preventDefault();
			}
		});
	}
	
	function replyCancel(idx){
		$("#replyBox"+idx).slideUp(500);
	}
	
	//댓글수정
	function replyEdit(idx,cNo, bNo){
		var insReply = '';
		var cContent=$('.comment-detail').eq(idx).find('p').text();
		insReply += '<form name="vocReplyEdit" method="post" action="<c:url value='/voc/vocReplyEdit'/>">';
		insReply += '<input type="hidden" name="cNo" value='+cNo+'>';
		insReply += '<input type="hidden" name="bNo" value='+bNo+'>';
		insReply += '<textarea name="cContent" id="editContent">'+cContent+'</textarea>';
		insReply += '<button type="submit">수정</button>';
		insReply += '<input type="button" value="취소" onclick="javascript:replyEditCancel('+idx+')">';
		insReply += '</form>';

		$("#replyEditBox"+idx).slideDown(500);
		$("#replyEditBox"+idx).html(insReply);
		
		$('form[name=vocReplyEdit]').submit(function(){
			if($.trim($('#editContent').val()) == ""){
				alert("내용을 입력해주세요");
				$('#editContent').focus();
				event.preventDefault();
			}
		});
	}
	
	function replyEditCancel(idx){
		$("#replyEditBox"+idx).slideUp(500);
	}
	
</script>
<!-- breadcrumb start -->
    <section class="breadcrumb-section pt-0">
        <div class="breadcrumb-content pt-0">
            <div>
                <h2>blog</h2>
                <nav aria-label="breadcrumb" class="theme-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">blog</li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="title-breadcrumb">Rica</div>
    </section>
    <!-- breadcrumb end -->


    <!-- blog detail section start -->
    <section class="section-b-space bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 order-lg-1">
                    <div class="blog-single-detail">
                        <div class="top-image">
                            <div class="slide-1 arrow-dark">
                                <div>
                                    <img src="../assets/images/portfolio/vocBanner.jpg" alt=""
                                        class="img-fluid blur-up lazyload">
                                </div>
                                <div>
                                    <img src="../assets/images/tour/spain.jpg" alt=""
                                        class="img-fluid blur-up lazyload">
                                </div>
                            </div>
                        </div>
                        <div class="title-part">
                            <ul class="post-detail">
                                <li>${vo.BRegdate }</li>
                                <li>Posted By : ${vo.BId }</li>
                                <li><i class="fa fa-heart"></i> ${vo.BCount }</li>
                                <li><i class="fa fa-comments"></i> Comment num[${commentsCnt }]</li>
                            </ul>
                            <hr>
                            <h2>${vo.BTitle }</h2>
                        </div>
                        <div class="detail-part">
                        	<hr>
                        	<p>첨부파일 : 
                        	<c:if test="${!empty vo.FName }">
                        	<span><a href="<c:url value='/voc/download?bNo=${param.bNo }&fName=${vo.FName }'/>">
                        	${fileInfo }</a></span>
                        	<span>다운로드수 : ${vo.FCount }</span>
                        	</c:if>
                        	</p>
                            <h4>${vo.BContent }</h4>
                            <c:if test="${vo.BId==memVo.memId }">
                            <span class="submit-btn">
                                <button class="btn btn-solid" id="btEdit" 
                                onclick="location.href='<c:url value='/voc/voc_edit?bNo=${vo.BNo }'/>'">수정</button>
                            </span>
                            <span class="submit-btn">
                                <button class="btn btn-solid" id="btDelete"
                                onclick="location.href='<c:url value='/voc/voc_delete?bNo=${vo.BNo }&BGroupNo=${vo.BGroupno }&BStep=${vo.BStep }&FName=${vo.FName }'/>'">삭제</button>
                            </span>
                            </c:if>
                        </div>
                        <br><br>
                        <div class="comment-section">
                            <h4 class="comment">comments:</h4>
						<div class="comment-wrapper">
							<div class="comment-box">
								<!-- 댓글리스트 반복 시작 -->
								<c:set var="z" value="0" />
								<c:forEach var="vo" items="${list }">
								<c:choose>
									<c:when test="${vo.CDelflag == 'Y' }">
										<div class="comment-detail">
										<p>삭제된 댓글입니다</p>
										</div>
									</c:when>
									<c:otherwise>
									<div class="media">
									<c:if test="${vo.CStep>0 }">
										<c:forEach var="i" begin="1" end="${vo.CStep }">
										<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
										</c:forEach>
									</c:if>
										<c:if test="${vo.CStep>0 }">
										<img src="../assets/images/avtar/reply.png"
											class="img-fluid blur-up lazyload" alt="">
										</c:if>
										<div class="media-body">
											<div class="title">
												<div class="comment-user">
													<i class="fa fa-user"></i>
													<h6>${vo.CId }</h6>
												</div>
												<div class="comment-date">
													<i class="fas fa-clock"></i>
													<h6>${vo.CRegdate }&nbsp;</h6>
												</div>
												<c:if test="${vo.CId==memVo.memId }">
						                            <div class="reply-btn">
														<a href="javascript:replyEdit(${z},${vo.CNo },${vo.BNo })" name="replyEdit">
														<i class="fa fa-reply pe-2"></i>수정&nbsp;</a>
													</div>
						                            <div class="reply-btn">
														<a href="<c:url value='/voc/reply_delete?cNo=${vo.CNo }&bNo=${vo.BNo }'/>">
														<i class="fa fa-reply pe-2"></i>삭제</a>
													</div>
                            					</c:if>
											</div>
												<div class="comment-detail">
													<p>${vo.CContent }</p>
												</div>
											<div class="reply-btn">
												<a href="javascript:reply(${vo.CNo },${vo.BNo },${vo.CGroupno },${vo.CStep },${vo.CSortno });"><i class="fa fa-reply pe-2"></i>
													reply</a>
											</div>
											<!-- 대댓글 form -->
											<div id="replyBox${vo.CNo }">
											</div>
											<!-- 대댓글 form 끝-->
											<!-- 댓글수정 form -->
											<div id="replyEditBox${z }">
											</div>
											<!-- 댓글수정 form 끝-->
										</div>
									</div>
									</c:otherwise>
									</c:choose>
									<c:set var="z" value="${z+1 }" />
								</c:forEach>

							</div>
						</div>
					</div>
                        <div class="leave-comment">
                            <form method="post" action="<c:url value='/voc/comments_write'/>">
                            	<input type="hidden" name="bNo" value="${vo.BNo }">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <span>Posted by : </span>
                                        <input name="cId" class="form-control" type="text" value="${memVo.memId }">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <textarea name="cContent" class="form-control" id="exampleTextarea"
                                            placeholder="Leave a Comment" rows="4"></textarea>
                                    </div>
                                </div>
                                <div class="submit-btn">
                                    <button class="btn btn-solid" type="submit">post comment</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-3">
                    <div class="sticky-cls-top">
                        <div class="blog-sidebar">
                            <div class="blog-wrapper">
                                <div class="search-bar">
                                    <input type="text" placeholder="Search here..">
                                    <i class="fas fa-search"></i>
                                </div>
                            </div>
                            <div class="blog-wrapper">
                                <div class="sidebar-title">
                                    <h5>categories</h5>
                                </div>
                                <div class="sidebar-content">
                                    <ul class="sidebar-list">
                                        <li class="">
                                            <a href="<c:url value='/voc/voc_main'/>">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>고객의소리
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="<c:url value='/voc/voc_write'/>">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>등록하기
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="<c:url value='/voc/voc_list'/>">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>목록
                                            </a>
                                        </li>
                                        <li class=""><a href="<c:url value='/voc/voc_mylist'/>"> <i aria-hidden="true"
											class="fa fa-angle-right"></i>내가쓴 글
									</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog-wrapper">
                                <div class="sidebar-title">
                                    <h5>popular post</h5>
                                </div>
                                <div class="sidebar-content">
								<c:import url="/voc/bestList"></c:import>
							</div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog detail section end -->


<%@include file="../inc/footer.jsp"%>