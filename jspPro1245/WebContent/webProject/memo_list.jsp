<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>☆★☆★ Our Puppy ☆★☆★</title>
<%@ include file="../include/header.jsp" %>
<link type="text/css" rel="stylesheet" href="puppy.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
.menu_ {
	font-weight: bolder;
	text-align: center;
	background-color: #E6E6E6;
	font-style: normal;
}
table {
	border-style: none;
	margin-top: 10px;
	margin-left: -168px;
	width: 1500px;
	height: 100px;
	margin-bottom: -70px;
}
</style>
</head>
<body>
<div class="container">
<table border="1">
	<tr class="menu_">
		<th width="5%">번호</th>
		<th width="7%">이름</th>
		<th width="50%">한&nbsp;&nbsp;&nbsp;줄&nbsp;&nbsp;&nbsp;평</th>
		<th width="10%">날짜</th>
	</tr>
	<c:forEach var="row" items="${list}">
		<tr align="center">
			<td>${row.idx}</td>
			<td>${row.writer}</td>
			<td align="justify"><a href="${path}/memo_servlet/view.do?idx=${row.idx}">${row.memo}</a></td>
			<td>${row.post_date}</td>
		</tr>
	</c:forEach>
</table>
</div>
</body>
</html>