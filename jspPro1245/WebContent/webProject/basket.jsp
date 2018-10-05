<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>☆★☆★ Our Puppy ☆★☆★</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<c:if test="${param.message == 'logout'}">
	<script>
		alert("로그아웃 되었습니다.");
	</script>
</c:if>
<script type="text/javascript">
function calc() {
	var ex = Number(document.getElementById("total").defaultValue);
	for(var i=1; i<=11; i++) {
		var object = document.getElementById("sk"+i);
		if(object.checked) {
			ex += Number(object.value);
		}
	}
	document.getElementById("total").value = ex;
}
function success() {
	alert("주문이 완료되었습니다.");
	location.href="${path}/webProject/main.jsp";
}
</script>
<style type="text/css">
#title {
	width: 100%;
	text-align: center;
 	font-weight: bold;
	font-size: 40px;
	color: #F9BBE1;
	text-shadow: 3px 3px rgb(251, 213, 237);
	margin:30px 0px 10px 0px;
}
#subtitle {
	font-family: '서울한강 장체BL';
	font-size: 15px;
	text-align: right;
}
.line1 {
	background-color: #E8FDF1;
	width: 100%;
	height: 30px;
	text-align: left;
	background: #D3FAE6;
	padding: 30;
}
.login, .join, .basket {
	float: right;
	margin: 2.5px 25px;
	border: 2px dotted black;
	padding: 0px 20px 0px;
}
#nav {
	margin: 15px 15px 15px 15px;
	padding: 10px 10px 10px;
	line-height: 80px;
	color: gray;
	font-size: 1.3em;
	text-align: center;
	font-family: "맑은 고딕";
	width: 13%;
	height: 600px;
	float: left;
	font-weight: bold;
	background: -webkit-linear-gradient(180deg, white, #E1E1E1);
	background: -moz-linear-gradient(180deg, white, #E1E1E1);
	background: -o-linear-gradient(180deg, white, #E1E1E1);
	background: linear-gradient(180deg, white, #E1E1E1);	
	border-radius: 10px;
}
#nav:hover .menu {
	height:150px;
	background: white;
}
#nav .menu {
	-moz-transition: 1s ease;
	-o-transition: 1s ease;
	-webkit-transition: 1s ease;
	transition: 1s ease;
	height: 50px;
	padding: 10px 0px 30px;
	border-radius: 10px;
	text-align: center;
}
.me {
	text-decoration: underline;
	font-size:.8em;
	opacity: 0.0;
	line-height: 40px;
}
.me:hover {
	opacity: 1.0;
	padding: -3px 0px -3px 0px;
}
a {
	text-decoration: none;
	color: gray;
}
#center {
 	margin: 15px 380px 15px 0px;
	padding: 10px 10px 10px 10px;
	float: right;
	width: 62%;
	height: 600px;
	opacity: 0.5;
	background-image: url('../images/main.jpg');
	background-repeat: no-repeat left top fixed;
	background-size: cover;
	border-radius: 50px;
}
#footer {
	clear: both;
}
table {
	width: 100%;
	padding: 0px 200px 50px 200px;
	text-align: left;
}
td {
	font-size:.7em;
}
th {text-decoration: underline;}
.end {
	font-size:.5em;
	
}
#side1 {
   	position:fixed;
	left: 1350px;
	top: -10px;
	border: 2px dotted #F5E150;
	background-color: #FCF4BE;
	width: 280px;
	height: 180px;
	margin: 200px;
	border-radius: 14px;
}
#side1 h2 {
	text-align: center;
	text-decoration: underline;
}
#side1 p {
	padding:10px;
	font-size:.7em;
}
#side2 {
	position: fixed;
	left: 1350px;
	top: 180px;
	border: 2px dotted #F5E150;
	background-color: #FCF4BE;
	width: 280px;
	height: 180px;
	margin: 200px;
	border-radius: 14px;	
}
#side2 h2 {
	text-align: center;
}
#side2 p {
	font-size: .7em;
	padding:10px;
	font-weight: bold;
}
#center {height: 800px;}
table {
	width: 100%;
	padding: 0px 200px 50px 200px;
	text-align: left;
}
#basket {
	width: 600px;
	margin: 0 auto;
}
#basketList {
	width: 100%;
}
#basketList th {
	border: 1px solid #ccc;
	height: 30px;
	text-align: center;
	background-color: #333;
	color: #fff;
}
#basketList td {
	border: 1px solid #ccc;
	height: 30px;
	text-align: center;
}
#basket td {
	text-align: center;
}
tfoot {
	font-size: 15px;
	font-weight: bold;
}
#total {
	border: none 0;
	background: none;
	font-size: 1.5em;
	font-weight: bold;
	text-align: center;
}
</style>
</head>
<body>
<div id="title"><a href="main.jsp" style="color: #F9BBE1;">OUR PUPPY</a></div>
<p id="subtitle">우리 댕댕이들의 Story...</p>
<hr/>
<div class="line1">
□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■
<div align="right" style="float: right;	margin: 2.5px 25px;	padding: 0px 20px 0px;">
	<c:choose>
		<c:when test="${sessionScope.userid == null}">
			<button type="button"><a href="${path}/webProject/login.jsp">Log_In</a></button>
			<button type="button"><a href="${path}/webProject/join.jsp">Join</a></button>
		</c:when>
		<c:otherwise>
			<em style="font-weight: bolder; font-style: normal; font-size: 1.1em;">${sessionScope.userid}</em>님이 로그인중입니다.
			<button type="button"><a href="${path}/puppy_servlet/logout.do">Log_Out</a></button>
		</c:otherwise>
	</c:choose>
<button type="button"><a href="basket.jsp">basket</a></button>
</div>
</div>
<div id="center" >
<p style="font-size:3em; text-align:center; font-weight: bold;">BASKET</p>
<div id="basket">
<table id="basketList" style="border-collapse:collapse; border-spacing:0;">
	<colgroup>
			<col width="380px">
			<col width="160px">
			<col width="*">
	</colgroup>
	<thead>
		<tr><th>상품명</th>
			<th>가격</th>
			<th>선택</th></tr>
		<tr><td>간식류</td>
			<td colspan="2"></td></tr>
	</thead>
	<tbody>
		<tr><td><label for="sk1">관절영양제</label></td>
			<td>15000</td>
			<td><input type="checkbox" name="sk1" id="sk1" value="15000" onclick="calc()"></td></tr>
		<tr><td><label for="sk2">수제육포</label></td>
			<td>10000</td>
			<td><input type="checkbox" name="sk2" id="sk2" value="10000" onclick="calc()"></td></tr>
		<tr><td><label for="sk3">반려견용 우유</label></td>
			<td>5000</td>
			<td><input type="checkbox" name="sk3" id="sk3" value="5000" onclick="calc()"></td></tr>
		<tr><td><label for="sk4">치석제거용 개껌</label></td>
			<td>3000</td>
			<td><input type="checkbox" name="sk4" id="sk4" value="3000" onclick="calc()"></td></tr>
		<tr><td><label for="sk5">오리도가니</label></td>
			<td>10000</td>
			<td><input type="checkbox" name="sk5" id="sk5" value="10000" onclick="calc()"></td></tr>
	</tbody>
	<thead>
		<tr><td>장난감류</td>
			<td colspan="2"></td></tr>
	</thead>
	<tbody>
		<tr><td><label for="sk6">꼬꼬댁인형</label></td>
			<td>3000</td>
			<td><input type="checkbox" name="sk6" id="sk6" value="3000" onclick="calc()"></td></tr>
		<tr><td><label for="sk7">딸랑이공</label></td>
			<td>2500</td>
			<td><input type="checkbox" name="sk7" id="sk7" value="2500" onclick="calc()"></td></tr>
		<tr><td><label for="sk8">뼈모양장난감</label></td>
			<td>3500</td>
			<td><input type="checkbox" name="sk8" id="sk8" value="3500" onclick="calc()"></td></tr>
		<tr><td><label for="sk9">실타래</label></td>
			<td>2000</td>
			<td><input type="checkbox" name="sk9" id="sk9" value="2000" onclick="calc()"></td></tr>
		<tr><td><label for="sk10">친환경고무재질장난감</label></td>
			<td>3000</td>
			<td><input type="checkbox" name="sk10" id="sk10" value="3000" onclick="calc()"></td></tr>
		<tr><td><label for="sk11">쭙쭙장난감</label></td>
			<td>1500</td>
			<td><input type="checkbox" name="sk11" id="sk11" value="1500" onclick="calc()"></td></tr>
	</tbody>
	<tfoot>
		<tr><th>총금액</th>
			<td colspan="2"><input type="text" name="total" id="total" value="0" readonly></td></tr>
	</tfoot>
</table>
<input type="button" value="주문하기" style="margin-left: 38%; margin-top: 2%; width: 160px; height: 40px; font-size: 15px" onclick="success()">
</div>
</div>
<div id="footer">
<table>
	<tr>
		<th><h2 style="text-align:center;">CUSTOMER CALL</h2></th>
		<th><h2 style="text-align:center;">BANKING ACCOUNT</h2></th>
		<th><h2 style="text-align:center;">INFO MENU</h2></th>
		<th><h2 style="text-align:center;">ADDRESS</h2></th>
	</tr>
	<tr>
		<td>1234-4321<br>
			월~금 AM 10:00 ~ PM 06:00<br>
			점심시간	PM 12:00 ~ PM 01:00<br>
			주말 & 공휴일은 쉽니다.</td>
		<td>입금계좌번호(예금주:홍길동)<br>
			대한은행) 000-00-00000<br>
			민국은행) 00-00-0000-000<br></td>
		<td>고객센터<br>
			이용약관<br>
			개인정보처리방침<br>
			이용안내<br>
			입사지원</td>
		<td>서울특별시 강동구 000번지</td>
	</tr>
</table>
</div>
<div class="end">
주식회사 홍길동<br>
대표자 : 홍길동 | 사업자 등록번호 : 000-00-00000 | 주소 : 서울특별시 강동구 | 개인정보보호책임자 : 홍길동(abcd@def.com)<br>
<p>
※ 안전한 상거래를 위해 KB에스크로 이체 구매 안전 서비스를 이용하실 수 있습니다.
</div>
</body>
</html>