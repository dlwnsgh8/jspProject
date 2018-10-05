<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배송지연안내</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function closeWindow() {
	document.form1.submit();
}
</script>
<style type="text/css">
em {
	text-decoration: underline;
	font-weight: bolder;
	color: red;
	font-style: normal;
}
h2 {
	text-decoration: underline;
	font-weight: bolder;
	text-align: center;
}
a {
	text-decoration: none;
}
b {
	font-size: .5em;
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>
<%
String chk = request.getParameter("chk");
if(chk != null) {
	Cookie cook = new Cookie("popup","no");
	cook.setMaxAge(60*60*24);
	response.addCookie(cook);
%>
<script type="text/javascript">
	self.close();
</script>
<% } %>
<div>
<h2>배송지연안내문</h2><br>
이번달 15일(광복절)을 기점으로 주문량이 폭주함에 따라 배송이 지연됨을 미리 공지해드립니다.<br>
7월 말일까지의 주문건은 <em>8월 14일</em>, 15일부터의 주문건은 <em>순차적으로</em>배송됨을 알려드립니다.<br>
배송에 차질이 생겨 죄송합니다.
<form method="post" name="form1">
<div align="right">
<br><br><br><hr />
	<input name="chk" type="checkbox" value="no"/><b>오늘하루 보이지 않기</b>&nbsp;
	<a href="javascript:closeWindow()"><b>닫기</b></a>
</div>
</form>
</div>
</body>
</html>