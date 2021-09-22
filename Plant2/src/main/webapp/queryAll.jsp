<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.moneyflow"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
	<table width=650 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="title.jsp"/>
		<tr>
			<td height=400 align=center valign="top">
				<table width=600 align=center border=0>
					<tr>
						<td colspan=10 align=center>
						<h3>所有金流明細資料</h3>
					<tr>
						<td colspan=10>
						<hr>					
					<tr>
						<td width=100>ID
						<td width=100>種類
						<td width=100>美金
						<td width=100>台幣
						<td width=100>澳幣
						<td width=100>紐幣
						<td width=100>港幣
						<td width=100>總和
					<tr>
						<td colspan=10><!-- -全部內容 -->
						<hr>
						<%=new moneyflow().queryAll() %>
						
					<tr>
						<td colspan=10>
						<hr>
					<tr>
						<td colspan=10 align=center>
						<a href="query.jsp">上一頁</a>				
				
				</table>
			
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>