<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<table width=600 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="title.jsp"/>
		<tr>
			<td height=400>
				<table width=400 align=center>
					<tr>
						<td align=center><a href="addPlant.jsp">1.新增</a>
					<tr>
						<td align=center><a href="query.jsp">2.查詢</a>
					<tr>
						<td align=center><a href="update.jsp">3.修改</a>
					<tr>
						<td align=center><a href="delete.jsp">4.刪除</a>			
				</table>
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>		
	</table>
</body>
</html>