<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login_proc.jsp" method="post">
		<label>아이디:</label>
		<input type="text" name="id">
		<br/>
		<label>비번:</label>
		<input type="text" name="pw">
		
		<button type="submit">로그인</button>
	</form>
	
</body>
</html>