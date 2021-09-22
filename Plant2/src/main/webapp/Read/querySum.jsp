<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.moneyflow"%>
<%

	//out.println(request.getParameter("start"));
/*
getParameter("start")
如果沒有產生start變數-->null
有start變數,值為空白-->start=""空字串
*/


/*
1.request-->get--->start,end
2.判斷-->start,end !=null ,""-->qurySum
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
						<h3>查詢金額範圍的金流明細資料</h3>
					
					<form action="querySum.jsp" method="post">
						<table width=400 align=center>
							<tr>
								<td align=center>
								輸入查詢金額:
								從   <input type="text" name="start" size=5>
								到   <input type="text" name="end" size=5>
								<input type="submit" value="確定">				
						
						</table>			
					
					
					</form>
					
					
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
						<%=show %>
						
					<tr>
						<td colspan=10>
						<hr>
					<tr>
						<td colspan=10 align=center>
						<a href="query.jsp">上一頁</a>
						<a href="../plantindex.jsp">回首頁</a>				
				
				</table>
			
		<tr>
			<td height=100 align=center><jsp:include page="../end.jsp"/>
	
	</table>

</body>
</html>