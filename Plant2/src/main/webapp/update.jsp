<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import = "Model.money"
    import="Dao.moneyflow"%>
<%
 request.setCharacterEncoding("big5");
 String ID=request.getParameter("id");
 String Kind=request.getParameter("kind");
 String US=request.getParameter("USD");
 String NT=request.getParameter("NTD");
 String AU=request.getParameter("AUD");
 String NZ=request.getParameter("NZD");
 String HK=request.getParameter("HKD");
 if(ID!=null && ID!="" && 
		 Kind!=null && Kind!="" && 
		 US!=null && US!= "" && 
		 NT!=null && NT!= "" &&
		 AU!=null && AU!= "" && 
		 NZ!=null && NZ!= "" &&
		 HK!=null && HK!= ""  )
 {
	 int I=Integer.parseInt(ID);
	 money m = new moneyflow().queryId(I);
	 
	 
	 int us=money.SqlToInt(US);
	 int nt=money.SqlToInt(NT);
	 int au=money.SqlToInt(AU);
	 int nz=money.SqlToInt(NZ);
	 int hk=money.SqlToInt(HK);
	 
	 m.setKind(Kind);
	 m.setUSD(us);
	 m.setNTD(nt);
	 m.setAUD(au);
	 m.setNZD(nz);
	 m.setHKD(hk);
	 
	new moneyflow().update(m); 
	 
	 
	 
	 
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
						<h3>�ק���</h3>
					
					<form action="update.jsp" method="post">
						id:<input type="text" name="id" size=5>
						����:<select name="kind">
							<option value="���J">���J
							<option value="��X">��X				
						</select>
						����:<input type="text" name="USD" size=5>
						�x��:<input type="text" name="NTD" size=5>
						�D��:<input type="text" name="AUD" size=5>
						�ù�:<input type="text" name="NZD" size=5>
						���:<input type="text" name="HKD" size=5>
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