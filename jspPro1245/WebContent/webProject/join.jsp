<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>☆★☆★ Our Puppy ☆★☆★</title>
<link type="text/css" rel="stylesheet" href="puppy.css">
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<style type="text/css">
.center_join {margin: 40px 0px 0px 350px;}
.yak {
	border: 1px solid black;
	width: 450px;
	height: 30px;
	overflow: auto;
	font-size:5px;
}
em {
	font-size: 8px;
}
#center {
	height: 870px;
}
</style>
<script type="text/javascript">
/* $(function() {
	$("#btnJoin").click(function() {
	  	var param = "userid="+$("#userid").val()
	  				+"&pwd="+$("#pwd").val()
	  				+"&name="+$("#name").val()
	  				+"&email="+$("#email").val()
	  				+"&hp="+$("#hp").val()
	  				+"&address="+$("#address").val();
		$.ajax({
			type: "post", 
			url: "/jspPro1245/puppy_servlet/join.do", 
			data: param, 
			success: function() {
				alert("환영합니다.");
				location.href="main.jsp";
			}
		});
	});
}); */
function join() {
	var userid = document.form1.userid.value;
	var pwd = document.form1.pwd.value;
	var name = document.form1.name.value;
	var email = document.form1.email.value;
	var hp = document.form1.hp.value;
	var address = document.form1.address.value;
	if(userid == "") {
		alert("아이디를 입력하시오.");
		document.form1.userid.focus();
		return;
	}
	if(pwd == "") {
		alert("비밀번호를 입력하시오.");
		document.form1.pwd.focus();
		return;
	}
	if(name == "") {
		alert("이름을 입력하시오.");
		document.form1.name.focus();
		return;
	}
	if(email == "") {
		alert("이메일을 입력하시오.");
		document.form1.email.focus();
		return;
	}
	if(hp == "") {
		alert("휴대전화번호를 입력하시오.");
		document.form1.hp.focus();
		return;
	}
	if(address == "") {
		alert("주소를 입력하시오.");
		document.form1.address.focus();
		return;
	}
	document.form1.action = "${path}/puppy_servlet/join.do";
	document.form1.submit();
	alert("환영합니다");
}
function mailCheck() {
	var mailCheck = /^[a-z0-9]{2,}@[a-z0-9]{2,}\.[a-z]{2,}$/;
	if (!mailCheck.test(email.value)) {
		alert("이메일 형식이 잘못 되었습니다.");
		document.form1.email.focus();
		return;
	}
}
function nameCheck() {
	var nameCheck = /^[가-힣\x20]{2,10}$/;
	if (!nameCheck.test(name.value)) {
		alert("유효하지 않은 이름입니다.");
		document.form1.name.focus();
		return;
	}
}
function hpCheck() {
	var hpCheck = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/;
	if (!hpCheck.test(hp.value)) {
		alert("유효하지 않은 번호입니다.");
		document.form1.hp.focus();
		return;
	}
}

</script>
</head>
<body>
<div id="title"><a href="${path}/webProject/main.jsp" style="color: #F9BBE1;">OUR PUPPY</a></div>
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
			${sessionScope.userid}님이 로그인중입니다.
			<button type="button"><a href="${path}/puppy_servlet/logout.do">Log_Out</a></button>
		</c:otherwise>
	</c:choose>
<button type="button"><a href="basket.jsp">basket</a></button>
</div>
</div>
<div id="center" >
	<div class="center_join">
	<form method="post" name="form1">
	<fieldset style="width:450px; height:340px; border:2px dotted black;">
		<legend style="font-weight: bolder;">&nbsp;&nbsp;회원가입&nbsp;&nbsp;</legend><br>
			아이디　　　　<input id="userid" name="userid"><p>
			비밀번호　　　<input type="password" id="pwd" name="pwd"><p>
			이름　　　　　<input id="name" name="name" onchange="nameCheck()"><p>
			이메일주소　　<input type="email" id="email" name="email" onchange="mailCheck()"><p>
			전화번호　　　<input type="tel" id="hp" name="hp" onchange="hpCheck()"><p>
			집주소<br><br>
						<input id="address" name="address" size="59"><p>
	</fieldset>
	</form>
	<fieldset style="width:450px; height:110px; border:2px dotted black;">
		<legend>자기소개</legend>
		<textarea name="intro" rows="5" cols="60" placeholder="나를 마음껏 소개해봐요"></textarea>
	</fieldset>
	<fieldset style="width:450px; height:250px; border:2px dotted black;">
		<em>[필수]이용약관 동의</em><input type="checkbox" name="check1" onchange="check()">
		<div class="yak">이<br>용<br>양<br>관<br>동<br>의<br>리<br>스<br>트<br>스크롤은 여기가 끝입니다.</div><br>
		<em>[필수]개인정보수집 및 이용동의</em><input type="checkbox" name="check1" onchange="check()">
		<div class="yak">개<br>인<br>정<br>보<br>수<br>집<br>스크롤은 여기가 끝입니다.</div><br>
		<em>[선택]쇼핑정보 수신 동의</em><input type="checkbox" name="check1" onchange="check()">
		<div class="yak">쇼<br>핑<br>정<br>보<br>스크롤은 여기가 끝입니다.</div><br>
	</fieldset><br>
	<div style="width:480px; height:25px;" align="right">
		<!-- <button id="btnJoin">가입하기</button> -->
		<input type="button" id="btnJoin" value="가입하기" onclick="join()">&nbsp;&nbsp;<input type="button" value="취소" onclick="location.href='main.jsp'">
	</div>
</div>	
</div>
<div id="footer">
<table>
	<tr>
		<th><h2>CUSTOMER CALL</h2></th>
		<th><h2>BANKING ACCOUNT</h2></th>
		<th><h2>INFO MENU</h2></th>
		<th><h2>ADDRESS</h2></th>
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