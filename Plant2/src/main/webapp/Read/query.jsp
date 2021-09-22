<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
	<table width=650 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="../title.jsp"/>
		<tr>
			<td height=400 align=center valign="top">
			<table width=400 align=center border=0>
					<tr>
						<td align=center>
						<h3>查詢金流表</h3>
					<tr>
						<td>
						<hr>
					<tr>
						<td align=center><a href="queryAll.jsp">1)全部</a>
					<tr>
						<td align=center><a href="querySum.jsp">2)金額條件</a>
					<tr>
						<td align=center><a href="../plantindex.jsp">回首頁</a>
				
				</table>
		<tr>
			<td height=100 align=center><jsp:include page="../end.jsp"/>
	
	</table>

</body>
</html>