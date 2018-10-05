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
<style type="text/css">
.menu_ {
	font-weight: bolder;
	text-align: center;
	background-color: #E6E6E6;
	font-style: normal;
	text-decoration: none;
}
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
.menu_2 {
	background-color: #E6E6E6;
	text-align: center;
	font-weight: bolder;
}
</style>
<script type="text/javascript">
$(function() {
	var currentPosition = parseInt($("#side1").css("top"));
	$(window).scroll(function() {
		var position = $(window).scrollTop();
		$("#side1").stop().animate({
			"top": position+currentPosition+"px"
		}, 1000);
	});
});
$(function() {
	var currentPosition = parseInt($("#side2").css("top"));
	$(window).scroll(function() {
		var position = $(window).scrollTop();
		$("#side2").stop().animate({
			"top": position+currentPosition+"px"
		}, 1000);
	});
});
$(function() {
	$("#btnLogout").click(function() {
		location.href = "${path}/puppy_servlet/logout.do";
	});
});
$(function(){
	$("#btnUpdate").click(function() {
		document.form1.action = "${path}/board_servlet/update.do";
		document.form1.submit();
	});
	$("#btnDelete").click(function() {
		if(confirm("삭제하시겠습니까?") == true) {
			document.form1.action = "${path}/board_servlet/delete.do";
			document.form1.submit();
		} else {
			return false;
		}
	});	
});
</script>
</head>
<body>
<div id="title"><a href="${path}/webProject/main.jsp" style="color: #F9BBE1;">OUR PUPPY</a></div>
<p id="subtitle">우리 댕댕이들의 Story...</p>
<hr/>
<div class="line1">
□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□
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
<div id="side1">
	<h2>8월의 EVENT !!!</h2>
	<p>총 주문금액이 30000원 이상인 고객에 한하여 무료로 상품을 배송해드리는 이벤트를 준비했으니 많은 이용바랍니다^^</p>
</div>
<div id="side2">
	<h2>최근에 본 글</h2>
	<p>. . . . . .</p>
</div>
<div id="nav">
	<a href="${path}/webProject/intro.jsp">사이트 소개</a>
	<div class="menu">강아지용품
		<div class="me"><a href="${path}/webProject/snack.jsp">간식</a></div>
		<div class="me"><a href="${path}/webProject/toy.jsp">장난감</a></div>
	</div>
	<a href="${path}/webProject/gel.jsp">갤러리</a><br>
	<a href="${path}/board_servlet/list.do">자유게시판</a><br>
	<a href="${path}/webProject/hugi.jsp">상품후기</a><br>
	<a href="${path}/webProject/gogaek.jsp">고객센터</a><br>
</div>
<div id="center">
<form name="form1" method="post" action="${path}/board_servlet/insert.do" enctype="multipart/form-data">
<table style="font-size:20px; border-style:none; margin-top: 30px; margin-left:-168px; width:1500px; padding-bottom: 5px;" border="1">
	<tr><td class="menu_2">이름</td>
		<td><input name="writer" id="writer" value="${dto.writer}"></td></tr>
	<tr><td class="menu_2" style="background-color: #E6E6E6;">제목</td>
		<td><input name="subject" id="subject" size="60" value="${dto.subject}"></td></tr>
	<tr><td class="menu_2" style="background-color: #E6E6E6;">본문</td>
		<td><textarea rows="5" cols="60" name="content" id="content">${dto.content}</textarea></td></tr>
	<tr><td class="menu_2" style="background-color: #E6E6E6;">첨부파일</td>
		<td><c:if test="${dto.filesize > 0}">&nbsp;&nbsp;${dto.filename} (${dto.filesize / 1024} KB)
				<input type="checkbox" name="fileDel">첨부파일 삭제<br>
			</c:if>
			<input type="file" name="file1"></td></tr>
	<tr><td class="menu_2" style="background-color: #E6E6E6;">비밀번호</td>
		<td><input type="password" name="passwd" id="passwd"></td></tr>
</table>
<table style="font-size:20px; border-style:none; margin-top: 0px; margin-left:-168px; width:1500px; padding-bottom: 5px;">
	<tr><td align="right">
			<input type="hidden" name="num" value="${dto.num}">
			<input type="button" value="수정" id="btnUpdate">
			<input type="button" value="삭제" id="btnDelete"></td></tr>
</table>
</form>
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