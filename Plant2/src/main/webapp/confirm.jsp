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
					<h3>�o�O�A�����J����</h3>
				<tr>
					<td colspan=2>
					<hr> 
				<tr>
					<td width=100 align=center>���J/��X
					<td><%=a.getKind() %>
				<tr>
					<td width=100 align=center>����
					<td>$US <%=a.USD %> 
				<tr>
					<td width=100 align=center>�x��
					<td>$NT <%=a.NTD %> 
				<tr>
					<td width=100 align=center>�D��
					<td>$AU <%=a.AUD %> 
				<tr>
					<td width=100 align=center>�ù�
					<td>$NZ <%=a.NZD %> 
				<tr>
					<td width=100 align=center>���
					<td>$HK <%=a.HKD %> 
				<tr>
					<td width=100 align=center>�`�@
					<td>�x�� <%=a.getsum() %> ��
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<td colspan=2 align=center>
					<a href="addPlantController">�T�w</a>
					<a href="addPlant.jsp">���s��J</a>			
			</table>
			
			
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>
</body>
</html>