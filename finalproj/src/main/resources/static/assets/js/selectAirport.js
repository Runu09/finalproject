$(document).ready(
		function() {
			
		$(function(){
			$('.arr li').click(function(){
				var acity=$(this).find('h5').text();
				if(acity==$('#departure').val()){
					alert("출발지와 도착지를 다르게 선택하세요.");
					acity.val().remove;
				}
				setArrival(acity)
			});
		});
			
		$(function(){
			$('.dep li').click(function(){
				var dcity=$(this).find('h5').text();
				if(dcity==$('#arrival').val()){
					alert("출발지와 도착지를 다르게 선택하세요.");
					dcity.val().remove;
				}
				setDeparture(dcity)
			});
		});
		
		function setArrival(airport){
			$('#arrival').val(airport);
			$('#arrBox').removeClass('show');
			
		};
		function setDeparture(airport){
			$('#departure').val(airport);
			
			$('#depBox').removeClass('show');
			
		};

			
		
		$(function(){
			$('.arr li').click(function(){
				var acity=$(this).find('div').text();
				setHiddenArr(acity)
			});
		});
			
		$(function(){
			$('.dep li').click(function(){
				var dcity=$(this).find('div').text();
				
				setHiddenDep(dcity)
			});
		});
		
		function setHiddenArr(airporthd){
			$('#hiddenArr').val(airporthd);
			
		};
		function setHiddenDep(airporthd){
			$('#hiddenDep').val(airporthd);
			
		};
		
		//
		$(function(){
			$('#inwonOk').click(function(){
				var acity=$('#numberUpDown1').text();
				setHiddenAd(acity)
			});
		});
			
		$(function(){
			$('#inwonOk').click(function(){
				var dcity=$('#numberUpDown2').text();
				
				setHiddenCh(dcity)
			});
		});
		
		function setHiddenAd(adInwon){
			$('#adult').val(adInwon);
			
		};
		function setHiddenCh(chInwon){
			$('#child').val(chInwon);
			
		};
		
		$(function(){
			$('#datepicker').on("change",function(){
				var hdDate=$(this).val();
				var hdDate1 = hdDate.substring(0,4)+""+hdDate.substring(5,7)+""+hdDate.substring(8,10);
				$('#hdDate').val(hdDate1);
			});
		});

		
		
});