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
						<h3>�Ҧ����y���Ӹ��</h3>
					<tr>
						<td colspan=10>
						<hr>					
					<tr>
						<td width=100>ID
						<td width=100>����
						<td width=100>����
						<td width=100>�x��
						<td width=100>�D��
						<td width=100>�ù�
						<td width=100>���
						<td width=100>�`�M
					<tr>
						<td colspan=10><!-- -�������e -->
						<hr>
						<%=new moneyflow().queryAll() %>
						
					<tr>
						<td colspan=10>
						<hr>
					<tr>
						<td colspan=10 align=center>
						<a href="query.jsp">�W�@��</a>				
				
				</table>
			
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>