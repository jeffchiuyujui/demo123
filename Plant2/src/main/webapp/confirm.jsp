<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import ="Model.money"
    import ="Model.user"
    import = "java.io.*, java.util.*"
    import = "java.servlet.*, java.text.*"
    %>
<%
	request.setCharacterEncoding("big5");
	String Kind=request.getParameter("kind");
	int US=money.SqlToInt(request.getParameter("USD"));
	int NT=money.SqlToInt(request.getParameter("NTD"));
	int AU=money.SqlToInt(request.getParameter("AUD"));
	int NZ=money.SqlToInt(request.getParameter("NZD"));
	int HK=money.SqlToInt(request.getParameter("HKD"));

	money a = new money(Kind,US,NT,AU,NZ,HK);
	session.setAttribute("A", a);
	
%>
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
			<td height=400>
			<table wdith=500 align=center border=0>
				<tr>
					<td colspan=2 align=center>
					<h3>這是你的收入明細</h3>
				<tr>
					<td colspan=2>
					<hr> 
				<tr>
					<td width=100 align=center>收入/支出
					<td><%=a.getKind() %>
				<tr>
					<td width=100 align=center>美金
					<td>$US <%=a.USD %> 
				<tr>
					<td width=100 align=center>台幣
					<td>$NT <%=a.NTD %> 
				<tr>
					<td width=100 align=center>澳幣
					<td>$AU <%=a.AUD %> 
				<tr>
					<td width=100 align=center>紐幣
					<td>$NZ <%=a.NZD %> 
				<tr>
					<td width=100 align=center>港幣
					<td>$HK <%=a.HKD %> 
				<tr>
					<td width=100 align=center>總共
					<td>台幣 <%=a.getsum() %> 元
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<td colspan=2 align=center>
					<a href="addPlantController">確定</a>
					<a href="addPlant.jsp">重新輸入</a>			
			</table>
			
			
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>
</body>
</html>