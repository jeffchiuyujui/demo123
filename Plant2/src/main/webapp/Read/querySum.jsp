<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.moneyflow"%>
<%

	//out.println(request.getParameter("start"));
/*
getParameter("start")
�p�G�S������start�ܼ�-->null
��start�ܼ�,�Ȭ��ť�-->start=""�Ŧr��
*/


/*
1.request-->get--->start,end
2.�P�_-->start,end !=null ,""-->qurySum
3.queryAll
*/

	String Start=request.getParameter("start");
	String End=request.getParameter("end");
	String show;
	
	if(Start!=null && Start!="" && End!=null && End!="")
	{
		int S=Integer.parseInt(Start);
		int E=Integer.parseInt(End);
		
		show=new moneyflow().querySum(S, E);
	}
	else
	{
		show=new moneyflow().queryAll();
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
			<td height=100 align=center><jsp:include page="../title.jsp"/>
		<tr>
			<td height=400 align=center valign="top">
			<table width=600 align=center border=0>
					<tr>
						<td colspan=10 align=center>
						<h3>�d�ߪ��B�d�򪺪��y���Ӹ��</h3>
					
					<form action="querySum.jsp" method="post">
						<table width=400 align=center>
							<tr>
								<td align=center>
								��J�d�ߪ��B:
								�q   <input type="text" name="start" size=5>
								��   <input type="text" name="end" size=5>
								<input type="submit" value="�T�w">				
						
						</table>			
					
					
					</form>
					
					
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
						<%=show %>
						
					<tr>
						<td colspan=10>
						<hr>
					<tr>
						<td colspan=10 align=center>
						<a href="query.jsp">�W�@��</a>
						<a href="../plantindex.jsp">�^����</a>				
				
				</table>
			
		<tr>
			<td height=100 align=center><jsp:include page="../end.jsp"/>
	
	</table>

</body>
</html>