<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript" src='<c:url value="/assets/js/member.js"/>'></script>
<script type="text/javascript">
	var confirmValue=false;
	var inwon=${adult+child};
	var ch=${child};
	
	$(document).ready(function(){
		function getFormatDate(date){
		    var year = date.getFullYear();              //yyyy
		    var month = (1 + date.getMonth());          //M
		    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
		    var day = date.getDate();                   //d
		    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
		    return  year;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
		}
		
		$("#btPay").click(function(){
			if(inwon>0){
				alert("좌석을 선택해주세요.");
			}
			if(ch!=0){
				alert("소아 승객이 있을 경우 나이가 13세 미만이어야 합니다.");
			}
			if(inwon==0 && ch==0){
				$("form[name=frm]").submit();
			}
		});
		<c:forEach var="pVo" items="${pVo}">  
		 	<c:if test="${fn:contains(pVo.PSeat, ',')}">   
				<c:forEach var="pVo1" items="${fn:split(pVo.PSeat,',')}">  
					$("#${pVo1}").attr("disabled",true);
				</c:forEach>
			</c:if>
			<c:if test="${not fn:contains(pVo.PSeat, ',')}">   
				<c:forEach var="pVo2" items="${pVo.PSeat}">  
					$("#${pVo2}").attr("disabled",true);
				</c:forEach>
			</c:if>
		</c:forEach>
		 // 체크박스 클릭 시 
		$("input[type=checkbox]").change(function(){
			var seatNo=$(this).attr('id');
			if($(this).is(":checked")){
				if(inwon>0){ // 정상적인 상태
					$("#gogekSeat").val(seatNo);
		    		$("#modal_seatCheck").modal('toggle');
				} else { // 예약인원수 이상 클릭 시도할 때
					$(this).prop("checked",false);
					$("label[for="+$(this).attr('id')+"]").addClass("active");
					alert("예약한 인원수만큼 좌석선택이 완료되었습니다." );
				} 
				
	        } else{ // 이미 선택된 좌석을 한번 더 클릭 시
	        	if(confirm("정말 해당 좌석 선택을 취소하시겠습니까?")){
	        		var class_seatNo="."+seatNo;
	        		$(class_seatNo).remove();
	        		$("label[for="+$(this).attr('id')+"]").addClass("active");
	        		inwon++;
	        		alert(seatNo+"번 좌석을 취소하였습니다.");
	        	} else {
	        		$("label[for="+$(this).attr('id')+"]").removeClass("active");
	        	}
	        }
			
			// 모달 상태에서 체크인버튼 클릭 시
			$("#btnCheckIn").click(function(){
				if($("#gogekName").val()===""){
					$("label[for=gogekName]").empty();
					$("label[for=gogekName]").append("탑승자 성명을 기입해주세요.");
					$("label[for=gogekName]").fadeIn('fast');
					$("#gogekName").focus();
					setTimeout(function() {
						$("label[for=gogekName]").fadeOut();
					}, 500);
					
				} else if($("#gogekBirth").val()==="" || $("#gogekBirth").val().length!=8){
					$("label[for=gogekBirth]").empty();
					$("label[for=gogekBirth]").append("탑승자 생년월일 8자를 기입해주세요.");
					$("label[for=gogekBirth]").fadeIn('fast');
					$("#gogekBookNo").focus();
					setTimeout(function() {
						$("label[for=gogekBirth]").fadeOut();
					}, 500);
					
				} else if($("#gogekCon").val()===""){
					$("label[for=gogekCon]").empty();
					$("label[for=gogekCon]").append("탑승자 국적을 기입해주세요.");
					$("label[for=gogekCon]").fadeIn('fast');
					$("#gogekPassport").focus();
					setTimeout(function() {
						$("label[for=gogekCon]").fadeOut();
					}, 500);
					
				} else {
					var tagForSeatCheck="";
					tagForSeatCheck+="<label class='"+$("#gogekSeat").val()+"'>";
					tagForSeatCheck+="<input type='hidden' name= 'pSeat' value='"+$("#gogekSeat").val()+"'>";
					tagForSeatCheck+="<input type='hidden' name= 'pName' value='"+$("#gogekName").val()+"'>";
					tagForSeatCheck+="<input type='hidden' name= 'pBirth' value='"+$("#gogekBirth").val()+"'>";
					tagForSeatCheck+="<input type='hidden' name= 'pCon' value='"+$("#gogekCon").val()+"'>";
					tagForSeatCheck+="</label>";
					jQuery(".hiddenArea").append(tagForSeatCheck);
					
					var tagInfo="";
					tagInfo+="<label  class='"+$("#gogekSeat").val()+"'>";
					tagInfo+="<label for='pSeat'>좌석</label>";
					tagInfo+="<input type='text' class='form-control' name= 'pSeat' id='pSeat' value='"+$("#gogekSeat").val()+"' readonly='readonly'>";
					tagInfo+="<label for='pName'>이름</label>";
					tagInfo+="<input type='text' class='form-control' name= 'pName' id='pName' value='"+$("#gogekName").val()+"' readonly='readonly'>";
					tagInfo+="<label for='pBirthday'>생년월일</label>";
					tagInfo+="<input type='text' class='form-control' name= 'pBirth' id='pBirthday' value='"+$("#gogekBirth").val()+"' readonly='readonly'>";
					tagInfo+="<label for='pCon'>국적</label>";
					tagInfo+="<input type='text' class='form-control' name= 'pCon' id='pCon' value='"+$("#gogekCon").val()+"' readonly='readonly'>";
					tagInfo+="<hr>"
					tagInfo+="</label>";
					jQuery("#info").append(tagInfo);
					
					inwon--;
					alert($("#gogekSeat").val()+"번 좌석 선택이 완료되었습니다.");
					$("#modal_seatCheck").modal('toggle');
					
					$("#gogekName").val("");
					$("#gogekBirth").val("");
					$("#gogekCon").val("");
					
					var date = new Date();
					var today=getFormatDate(date);
					var birthDate = $("input[name=pBirth]").val().substring(0,4);
					var age=today-birthDate+1;
					
					if(ch>0){
						if(age>13){
							alert("소아 승객이 있을 경우 나이가 13세 미만이어야 합니다.");
						}else if(age<13){
							ch--;
						}
					}
				}
			});
			
			$("#choiceCancel").click(function(){
				$("#gogekName").val("");
				$("#gogekBirth").val("");
				$("#gogekCon").val("");
				$("label[for="+$("#gogekSeat").val()+"]").removeClass("active");
				$('#modal_seatCheck').modal('hide')
			});
			
	    });
	});

</script>
<!-- breadcrumb start -->
    <section class="breadcrumb-section small-sec flight-sec pt-0">
        <img src="http://themes.pixelstrap.com/rica/assets/images/flights/flight-breadcrumb2.jpg" class="bg-img img-fluid blur-up lazyload" alt="">
        <div class="content-bottom">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb" class="theme-breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="<c:url value='/main/main.do'/>">홈</a></li>
                                <li class="breadcrumb-item"><a href="<c:url value='/booking/flight-round-trip.do'/>">항공편검색</a></li>
                                <li class="breadcrumb-item active">예매</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb end -->
	
    <!-- booking section start -->
    <section class="small-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="review-section">
                    <div class="review_box">
                            <div class="title-top">
                                <h5>좌석</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="accordion addons-according" id="accordionExample">
                                            <div class="card">
                                                <div class="card-header" id="headingTwo">
                                                    <h2 class="mb-0">
                                                        <button class="btn btn-link collapsed" type="button"
                                                            data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            <img src="../assets/images/icon/seat.png" alt=""
                                                                class="img-fluid blur-up lazyload"> 좌석선택
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body seat-select">
                                                        <div class="seat-details">
                                                            <ul>
                                                                <li>
                                                                    <div class="box taken"></div>
                                                                    <h6>선택불가좌석</h6>
                                                                </li>
                                                                <li>
                                                                    <div class="box selected"></div>
                                                                    <h6>선택좌석</h6>
                                                                </li>
                                                                <li>
                                                                    <div class="box available"></div>
                                                                    <h6>선택가능좌석</h6>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="plane">
                                                            <div class="cockpit">
                                                                <div>
                                                                    <img src="../assets/images/flights/cockpit.png"
                                                                        alt="" class="img-fluid blur-up lazyload">
                                                                </div>
                                                            </div>
                                                            <div class="exit exit--front fuselage">

                                                            </div>
                                                            <ol class="cabin fuselage">
                                                                <li class="row row--1">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1A" />
                                                                            <label for="1A" id="1A_lb">1A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1B" />
                                                                            <label for="1B" id="1B_lb">1B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1C" />
                                                                            <label for="1C" id="1C_lb">1C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1D" />
                                                                            <label for="1D" id="1D_lb">1D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1E" />
                                                                            <label for="1E" id="1E_lb">1E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1F" />
                                                                            <label for="1F" id="1F_lb">1F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--2">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2A" />
                                                                            <label for="2A" id="2A_lb">2A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2B" />
                                                                            <label for="2B" id="2B_lb">2B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2C" />
                                                                            <label for="2C" id="2C_lb">2C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2D" />
                                                                            <label for="2D" id="2D_lb">2D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2E" />
                                                                            <label for="2E" id="2E_lb">2E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2F" />
                                                                            <label for="2F" id="2F_lb">2F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--3">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3A" />
                                                                            <label for="3A" id="3A_lb">3A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3B" />
                                                                            <label for="3B" id="3B_lb">3B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3C" />
                                                                            <label for="3C" id="3C_lb">3C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3D" />
                                                                            <label for="3D" id="3D_lb">3D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3E" />
                                                                            <label for="3E" id="3E_lb">3E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3F" />
                                                                            <label for="3F" id="3F_lb">3F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--4">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4A" />
                                                                            <label for="4A" id="4A_lb">4A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4B" />
                                                                            <label for="4B" id="4B_lb">4B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4C" />
                                                                            <label for="4C" id="4C_lb">4C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4D" />
                                                                            <label for="4D" id="4D_lb">4D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4E" />
                                                                            <label for="4E" id="4E_lb">4E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4F" />
                                                                            <label for="4F" id="4F_lb">4F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--5">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5A" />
                                                                            <label for="5A" id="5A_lb">5A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5B" />
                                                                            <label for="5B" id="5B_lb">5B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5C" />
                                                                            <label for="5C" id="5C_lb">5C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5D" />
                                                                            <label for="5D" id="5D_lb">5D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5E" />
                                                                            <label for="5E" id="5E_lb">5E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5F" />
                                                                            <label for="5F" id="5F_lb">5F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--6">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6A" />
                                                                            <label for="6A" id="6A_lb">6A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6B" />
                                                                            <label for="6B" id="6B_lb">6B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6C" />
                                                                            <label for="6C" id="6C_lb">6C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6D" />
                                                                            <label for="6D" id="6D_lb">6D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6E" />
                                                                            <label for="6E" id="6E_lb">6E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6F" />
                                                                            <label for="6F" id="6F_lb">6F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--7">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7A" />
                                                                            <label for="7A" id="7A_lb">7A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7B" />
                                                                            <label for="7B" id="7B_lb">7B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7C" />
                                                                            <label for="7C" id="7C_lb">7C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7D" />
                                                                            <label for="7D" id="7D_lb">7D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7E" />
                                                                            <label for="7E" id="7E_lb">7E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7F" />
                                                                            <label for="7F" id="7F_lb">7F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--8">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8A" />
                                                                            <label for="8A" id="8A_lb">8A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8B" />
                                                                            <label for="8B" id="8B_lb">8B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8C" />
                                                                            <label for="8C" id="8C_lb">8C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8D" />
                                                                            <label for="8D" id="8D_lb">8D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8E" />
                                                                            <label for="8E" id="8E_lb">8E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8F" />
                                                                            <label for="8F" id="8F_lb">8F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--9">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9A" />
                                                                            <label for="9A" id="9A_lb">9A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9B" />
                                                                            <label for="9B" id="9B_lb">9B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9C" />
                                                                            <label for="9C" id="9C_lb">9C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9D" />
                                                                            <label for="9D" id="9D_lb">9D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9E" />
                                                                            <label for="9E" id="9E_lb">9E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9F" />
                                                                            <label for="9F" id="9F_lb">9F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--10">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10A" />
                                                                            <label for="10A" id="10A_lb">10A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10B" />
                                                                            <label for="10B" id="10B_lb">10B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10C" />
                                                                            <label for="10C" id="10C_lb">10C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10D" />
                                                                            <label for="10D" id="10D_lb">10D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10E" />
                                                                            <label for="10E" id="10E_lb">10E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10F" />
                                                                            <label for="10F" id="10F_lb">10F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                            </ol>
                                                            <div class="exit exit--back fuselage">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="title-top">
                                <h5>여정 정보</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="logo-sec">
                                            <img src="../assets/images/flights/airlines/8.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                            <span class="title">${schedule.alName}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="airport-part">
                                            <div class="airport-name">
                                                <h6>${schedule.ADepnm} <span>${schedule.SStarttime.substring(8, 10)}:${schedule.SStarttime.substring(10, 12)}</span></h6>
                                                <p>${schedule.SStarttime.substring(0, 4)}-${schedule.SStarttime.substring(4, 6)}-${schedule.SStarttime.substring(6, 8)}</p>
                                            </div>
                                            <div class="airport-progress">
                                                <i class="fas fa-plane-departure float-start"></i>
                                                <i class="fas fa-plane-arrival float-end"></i>
                                            </div>
                                            <div class="airport-name arrival">
                                                <h6>${schedule.AArrnm} <span>${schedule.SArrtime.substring(8, 10)}:${schedule.SArrtime.substring(10, 12)}</span></h6>
                                                <p>${schedule.SArrtime.substring(0, 4)}-${schedule.SArrtime.substring(4,6)}-${schedule.SArrtime.substring(6, 8)}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="duration">
                                            <div>
                                                <h6>${schedule.SArrtime.substring(8, 10)*60+schedule.SArrtime.substring(10, 12)-(schedule.SStarttime.substring(8, 10)*60+schedule.SStarttime.substring(10, 12))}분</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="title-top">
                                <h5>정보</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="boxes">
                                            <h6>예매변경 및 취소 안내</h6>
                                            <ul>
                                                <li>본 항공사는 출발 시간으로부터 2시간 전까지만 일정을 변경할 수 있습니다.</li>
                                            </ul>
                                        </div>
                                       
                                        <div class="boxes">
                                            <h6>수하물 규정</h6>
                                            <ul>
                                                <li>위탁 수하물 : <span>15 kg</span></li>
                                                <li>기내 수하물: <span>7 kg</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="title-top">
                                <h5>승객 정보</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row form_flight">
                                    <div class="col-md-12">
                                        <form>
                                            <h6>승객</h6>
                                            <div class="row">
                                            	<div class="form-group col-md-6" id="info">
	                                                
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 res-margin">
                    <div class="sticky-cls-top">
                        <div class="review-section">
                            <div class="review_box">
                                <div class="title-top">
                                    <h5>예매 정보</h5>
                                </div>
                                <div class="flight_detail">
                                    <div class="summery_box">
                                        <table class="table table-borderless" id="table">
                                            <tbody>
                                                <tr>
                                                    <td>성인</td>
                                                    <td><fmt:formatNumber value="${schedule.SPrice*adult}" pattern="#,###" />원</td>
                                                </tr>
                                                <tr>
                                                	<c:if test="${child==0 }">
                                                	</c:if>
                                                	<c:if test="${child!=0 }">
	                                                	<td>소아</td>
	                                                    <td><fmt:formatNumber value="${schedule.SPrice*child-schedule.SPrice*0.25}" pattern="#,###" />원</td>
                                                	</c:if>
                                                </tr>
                                                <tr>
                                                    <td>세금</td>
                                                    <td>25,000원</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="grand_total" id="total">
                                        	<c:if test="${child==0 }">
	                                            <h5>예상 결제 금액: <span><fmt:formatNumber value="${schedule.SPrice*adult+25000}" pattern="#,###" />원</span></h5>
                                        	</c:if>
                                        	<c:if test="${child!=0 }">
	                                            <h5>예상 결제 금액: <span><fmt:formatNumber value="${schedule.SPrice*adult+schedule.SPrice*child-schedule.SPrice*0.25+25000}" pattern="#,###" />원</span></h5>
                                        	</c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="review_box">
                                <div class="flight_detail">
                                    <div class="promo-section">
                                        <div class="form-group mb-0" style="width: 70%;">
                                            <label>마일리지를 사용하시겠습니까?</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="mileage" id="mileage" onkeyup="printMile()" value=0>
                                                <div class="input-group-prepend">
                                                    <button class="input-group-text" id="btApply" name="btApply">apply</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="promos">
                                            <form>
                                                <div class="form-check">
                                                    <div>
                                                        <label class="form-check-label title" for="exampleRadios3">
                                                        	보유 마일리지
                                                        </label>
                                                        <p id="myMileage">${memVo.MMileage}</p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           	<!-- Modal : 좌석 체크  -->
			<div class="modal fade" id="modal_seatCheck" tabindex="-1" role="dialog" 
				aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h4 class="modal-title" id="myModalLabel">체크인 : 좌석선택</h4>
			      </div>
			      <div class="modal-body">
			      		<div class="form-group">
				            좌석번호 : <label for="gogekSeat" class="control-label"></label>
				            <input type="text" class="form-control" id="gogekSeat" value="" readonly/>
				          </div>
				          <div class="form-group">
				            탑승자 성명 : <label for="gogekName" class="control-label dispAlert" style="color:red;"></label>
				            <input type="text" class="form-control" id="gogekName">
				          </div>
				           <div class="form-group">
				            탑승자 생년월일 : <label for="gogekBirth" class="control-label dispAlert" style="color:red;"></label>
				            <input type="text" class="form-control" id="gogekBirth"/>
				          </div>
				          <div class="form-group">
				            탑승자 국적 : <label for="gogekCon" class="control-label dispAlert" style="color:red;"></label>
				            <input type="text" class="form-control" id="gogekCon">
				          </div>
			      </div>
			      <div class="modal-footer">
			        <button class="btn btn-default" data-dismiss="modal" id="choiceCancel">취소</button>
			        <button class="btn btn-primary" id="btnCheckIn">확인</button>
			      </div>
			    </div>
			  </div>
			</div>
<!-- 		
			<div class="modal fade" id="modal_confirm" tabindex="-1" role="dialog" 
				aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h4 class="modal-title" id="myModalLabel">좌석 선택 내역 확인</h4>
			      </div>
			      <div id="modal_confirmBody" class="modal-body">
			      
			      </div>
			      <div class="modal-footer">
			        <button class="btn btn-default" data-dismiss="modal" id="btnBack">돌아가기</button>
			        <button class="btn btn-primary" id="btnGoNext">결제하기</button>
			      </div>
			    </div>
			  </div>
			</div>-->
			 
			<!-- 최종전송 폼 -->
			<form action="<c:url value='/booking/flight-booking-payment.do' />" method="get" name="frm">
				<c:if test="${child==0 }">
					<input type='hidden' name='total' value="${schedule.SPrice*adult+25000}">
               	</c:if>
               	<c:if test="${child!=0 }">
               		<input type='hidden' name='total' value="${schedule.SPrice*adult+schedule.SPrice*child-schedule.SPrice*0.25+25000}">
               	</c:if>
				<!-- 마일리지 사용전 총금액 -->
				<input type="hidden" name="sNo" value="${schedule.SNo}">
				<input type="hidden" name="adult" value="${adult}">
				<input type="hidden" name="child" value="${child}">
				<div class="hiddenArea"></div>
				<div class="continue-btn">
				<input type="button" value="예매하기" class="btn btn-solid" id="btPay">
				</div>
			</form>
            <%-- <div class="continue-btn">
                <button onclick="window.location.href='<c:url value="/booking/flight-booking-addons.do"/>'" class="btn btn-solid"
                    type="submit">결제하기</button>
            </div> --%>
        </div>
    </section>
    <!-- booking section end -->


    <!-- book now section start -->
    <div class="book-panel">
        <h6 class="mb-0 text">결제금액 : <span>$2500</span></h6>
        <button type="button" onclick="window.location.href='<c:url value="/booking/flight-booking-payment.do?sNo=${schedule.SNo }"/>'"
            class="btn bottom-btn theme-color">continue</button>
    </div>
    <!-- book now section end -->
    
<%@include file="../inc/footer.jsp"%>