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
						<h3>��J����,�o�O�A�����J�ӥ�</h3>
					<tr>
						<td colspan=2>
						<hr>
					<tr>
						<td width=100 align=center>����
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
						
						<a href="plantindex.jsp">����</a>
						<DIV ALIGN="CENTER">
							<FORM>
							<INPUT NAME="print" TYPE="button" VALUE="�C�L����"
								ONCLICK="varitext()">
							</FORM>
						</DIV>
						
				
				</table>
				
				
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>
	

</body>
</html>