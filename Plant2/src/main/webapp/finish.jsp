<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.money"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<%
money a=(money)session.getAttribute("A");

%>
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>
	<table width=650 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="title.jsp"/>
		<tr>
			<td height=400>
			
			<table width=500 align=center border=0>
					<tr>
						<td colspan=2 align=center>
						<h3>輸入完成,這是你的收入細目</h3>
					<tr>
						<td colspan=2>
						<hr>
					<tr>
						<td width=100 align=center>明細
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
						
						<a href="plantindex.jsp">首頁</a>
						<DIV ALIGN="CENTER">
							<FORM>
							<INPUT NAME="print" TYPE="button" VALUE="列印此頁"
								ONCLICK="varitext()">
							</FORM>
						</DIV>
						
				
				</table>
				
				
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>
	

</body>
</html>