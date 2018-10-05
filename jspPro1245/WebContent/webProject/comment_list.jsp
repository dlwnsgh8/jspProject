<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
</head>
<body>
<table style="font-size:20px; border-style:none; margin-top: 0px; margin-left:-168px; width:1500px; padding-bottom: 5px;">
	<c:forEach var="row" items="${list}">
		<tr>
			<td class="comment"><em style="text-decoration: underline; font-style: normal; font-weight: bolder;">${row.writer} (<fmt:formatDate value="${row.reg_date}" pattern="yyyy-MM-dd hh:mm:ss" />)</em><br>
			<em style="text-decoration: none; font-style: normal; font-weight: normal;">${row.content}</em></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>