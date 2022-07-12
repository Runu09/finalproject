$(document).ready(
		function() {
			/* 탑승 인원 늘리기/줄이기 */
			$('#decAd').click(function(e) {
				e.preventDefault();

				var num2 = $('#numberUpDown1').text();
				var num1 = parseInt(num2);
				num1--;
				if (num1 <= 0) {
					alert('더이상 줄일수 없습니다.');
					num1 = 1;
				} else {
					$('#numberUpDown1').text(num1);
				}
			});

			$('#incAd').click(function(e) {
				e.preventDefault();
				var num2 = $('#numberUpDown1').text();
				var num1 = parseInt(num2);
				num1++;
				if (num1 >= 10) {
					alert('더이상 늘릴수 없습니다.');
					num1 = 9;
				} else {
					$('#numberUpDown1').text(num1);
				}
			});

			$('#decCh').click(function(e) {
				e.preventDefault();

				var num2 = $('#numberUpDown2').text();
				var num1 = parseInt(num2);
				num1--;
				if (num1 < 0) {
					alert('더이상 줄일수 없습니다.');
					num1 = 0;
				} else {
					$('#numberUpDown2').text(num1);
				}
			});
			$('#incCh').click(function(e) {
				e.preventDefault();
				var num2 = $('#numberUpDown2').text();
				var num1 = parseInt(num2);
				num1++;
				if (num1 >= 10) {
					alert('더이상 늘릴수 없습니다.');
					num1 = 9;
				} else {
					$('#numberUpDown2').text(num1);
				}
			});
			
			// 모달 값 설정
			$('#inwonOk').click(function(e) {
				e.preventDefault();
				var num1 = $('#numberUpDown1').text();
				var adNum = "성인: " + parseInt(num1);

				var num2 = $('#numberUpDown2').text();
				var chNum = parseInt(num2);
				if (chNum == 0) {
					chNum = "";
				} else {
					chNum = ", 소아: " + parseInt(num2);
				}


				$('#people').val(adNum + chNum);
				$('#qtyBox').removeClass('show');
			});
			
			$(function(){
				$('#btApply').click(function() {
					var mile=document.getElementById('mileage').value;
					var myMile=$('#myMileage').text();
					
					if(mile<=0){
						alert("사용하실 마일리지를 입력하세요.");
					}else if(mile>myMile){
						alert("마일리지가 부족합니다.");
					}else if(mile<=myMile){
						var res=myMile-mile;
						if(res>=0){
							$('#myMileage').text(res);
							var a= "<tr>"
							a+="<td>마일리지</td>"
							a+="<td>"+"-"+mile.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원</td>"
				            a+="</tr>"
				            $('#table').append(a);
				            
				            var st=$('.grand_total').text();
				            var regex = /[^0-9]/g;
				            var result = st.replace(regex, "");
				            var numRst=parseInt(result)-parseInt(mile);
				            var aaa=numRst.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				            
				            $('.grand_total span').text(aaa+"원");
				            
				            var total="";
				            total+="<input type='hidden' name= 'mMileage' value='"+parseInt(mile)+"'>";//사용한 마일리지
				            total+="<input type='hidden' name= 'mileTotal' value='"+numRst+"'>";//사용한 마일리지 차감된 총 금액
							jQuery(".hiddenArea").append(total);
						}
					}
				});
			});
});