$(document).ready(
		function() {
			
		$(function(){
			$('.arr li').click(function(){
				var acity=$(this).find('h5').text();
				setArrival(acity)
			});
		});
			
		$(function(){
			$('.dep li').click(function(){
				var dcity=$(this).find('h5').text();
				
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
});