<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.moneyflow"%>
 <%
 	String Id=request.getParameter("id");
 	if(Id!=null && Id!="")
 	{
 		int ID=Integer.parseInt(Id);
 		new moneyflow().delete(ID);
 	}
 
 
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
			<td height=400 align=center>
			<table width=800 align=center border=0>
					<tr>
						<td colspan=8 align=center>
						<h3>�R�����</h3>
					
					<form action="delete.jsp" method="post">
						id:<input type="text" name="id" size=5>
						<input type="submit" value="�T�w">
					</form>			
					
					
					
					<tr>
						<td colspan=8>
						<hr>					
					<tr>
						<td width=100>ID
						<td width=100>����
						<td width=100>USD
						<td width=100>NTD
						<td width=100>AUD
						<td width=100>NZD
						<td width=100>HKD
						<td width=100>���B
					<tr>
						<td colspan=8><!-- -�������e -->
						<hr>
					<tr>
						<td colspan=8>
						<%=new moneyflow().queryAll() %>
						
					<tr>
						<td colspan=8>
						<hr>
					<tr>
						<td colspan=8 align=center>
						<a href="plantindex.jsp">����</a>				
				
				</table>
			
			
		<tr>
			<td  height=100 align=center><jsp:include page="end.jsp"/>
	</table>

</body>
</html>