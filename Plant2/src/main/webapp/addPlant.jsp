<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
			
				<form action="confirm.jsp" method="post">
				<table width=1000 align=center border=0>
					<tr>
						<td colspan=6 align=center>
						收入
					<tr>
						<td colspan=6>
						<hr>						
						
					<tr>
						<td>
						收入/支出
						<select name="kind">
							<option value="收入">收入
							<option value="支出">支出
						</select>
						<td>
						美金:<input type="text" value="" name="USD" >	
						<td>
						台幣:<input type="text" value="" name="NTD" >	
						<td>
						澳幣:<input type="text" value="" name="AUD" >
						<td>
						紐幣:<input type="text" value="" name="NZD" >
						<td>
						港幣:<input type="text" value="" name="HKD" >	
					<tr>
						<td colspan=6>
						<hr>
					<tr>
						<td colspan=6 align=center>
						<input type="submit" value="確定">
						
				
				</table>	
				
				</form>
				
			
			
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>
</body>
</html>