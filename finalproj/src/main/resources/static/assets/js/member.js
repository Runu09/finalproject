/**
 * member.js
 */

$(function() {
	
	$('#mEmail2').change(function() {
		if ($(this).val() == "etc") {

			$('#mEmail3').val("");
			$('#mEmail3').css('visibility', 'visible');
			$('#mEmail3').focus();
		} else {

			$('#mEmail3').css('visibility', 'hidden');

		}

	});
});

function validate_userid(id) {
	var pattern = new RegExp(/^[a-zA-Z0-9]{6,15}$/);
	//var pattern = new RegExp(/^[a-zA-Z0-9_]{6,15}$/);
	return pattern.test(id);
}

function validate_pwd(pwd) {
	var pattern = new RegExp(/^[A-Za-z0-9$@$!%*#?&]{8,15}$/);
	return pattern.test(pwd);
}

function validate_tel(tel) {
	var pattern = new RegExp(/^[0-9]*$/g);
	return pattern.test(tel); //정규시과 일치하면 true
	/* 정규식 /^[0-9]*$/g
	0 에서 9사이의 숫자로 시작하거나 끝나야 한다는 의미 (^는 시작, $는 끝을 의미)
	닫기 대괄호(]) 뒤의 * 기호는 0번 이상 반복
	 */
}