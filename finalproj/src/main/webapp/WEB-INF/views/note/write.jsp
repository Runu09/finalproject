<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
body {
	font-family: Nunito, sans-serif;
	position: relative;
	background: white;
	font-size: 14px;
	color: black;
}

a {
	text-decoration: none;
}

.btn {
	background-color: #292929;
	border-color: transparent;
	-webkit-print-color-adjust: exact;
	letter-spacing: 0.4px;
	border-radius: 4px;
	font-weight: 800;
	font-size: 14px;
	line-height: 19px;
	color: #FFFFFF;
	cursor: pointer;
	padding: 7px 13px;
	-webkit-box-shadow: 1px 11px 20px 0px rgba(233, 179, 14, 0.12);
	box-shadow: 1px 11px 20px 0px rgba(233, 179, 14, 0.12);
	text-transform: capitalize;
}

.btn:focus {
	outline: none;
}

.text-center {
	text-align: center
}

.template-width {
	width: 800px;
	padding: 0 0 20px;
}

@media ( max-width : 767px) {
	.template-width {
		width: 550px;
	}
}

@media ( max-width : 576px) {
	.template-width {
		width: 800px;
	}
	.header {
		display: block;
	}
	.header td {
		display: block;
		text-align: center;
	}
}

@media ( max-width : 480px) {
	.template-width {
		width: 300px;
	}
}
</style>
<form method="post" action="<c:url value='/note/send.do'/>">
<input type="hidden" id="memList" name="memList"> 
	<table class="template-width" align="center" border="0" cellpadding="0"
		cellspacing="0"
		style="background-color: #fff; box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.2705882353); margin: 20px auto">
		<tbody>

			<tr style="border-bottom: 1px solid gray">
				<td class="success-img" style="text-align: center;" colspan="2">
					<h6
						style="width: 400px; margin: 20px auto; font-size: calc(18px + ( 22 - 18)* ((100vw- 320px)/(1920- 320)));">
						회원에게 보낼 쪽지를 작성하세요</h6> <!-- <p
					style="width: 400px; margin: 10px auto; line-height: 1.2; color: #9a9a9a; font-weight: 400;"></p>
		 -->
				</td>
			</tr>
			<tr>
				<td style="text-align: center"><h6 style="margin: 10px auto">받는사람</h6></td>
				<td><input class="form-control"
					style="width: 400px; margin: 0 auto; margin: 20px 0px; margin-right: 10px"
					"type="text" placeholder="제목" name="nTitle" id="nTitle"></td>
			</tr>
			<tr>
				<td style="text-align: center;"><textarea
						style="width: 200px; margin: 0px 30px; margin-bottom: 20px; border-color: #cecece;"
						rows="10" disabled="disabled" id="receiver"></textarea>
				<td><textarea
						style="width: 400px; margin-bottom: 20px; border-color: #cecece;" id="nContent" 
						name="nContent" rows="10"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 0 30px 30px; text-align: center;">
					<button class="btn" type="submit" id="btSend" style="background-color: gray;border-color: gray">쪽지 보내기</button>
				</td>
				<!-- <a href="#" class="btn">쪽지 보내기</a></td> -->
			</tr>
		</tbody>
	</table>
</form>

