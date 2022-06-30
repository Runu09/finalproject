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

});