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
						���J
					<tr>
						<td colspan=6>
						<hr>						
						
					<tr>
						<td>
						���J/��X
						<select name="kind">
							<option value="���J">���J
							<option value="��X">��X
						</select>
						<td>
						����:<input type="text" value="" name="USD" >	
						<td>
						�x��:<input type="text" value="" name="NTD" >	
						<td>
						�D��:<input type="text" value="" name="AUD" >
						<td>
						�ù�:<input type="text" value="" name="NZD" >
						<td>
						���:<input type="text" value="" name="HKD" >	
					<tr>
						<td colspan=6>
						<hr>
					<tr>
						<td colspan=6 align=center>
						<input type="submit" value="�T�w">
						
				
				</table>	
				
				</form>
				
			
			
		<tr>
			<td height=100 align=center><jsp:include page="end.jsp"/>
	
	</table>
</body>
</html>