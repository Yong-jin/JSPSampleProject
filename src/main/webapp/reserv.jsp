<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>reserv.jsp 예약페이지</h1>
	
	<% 
	String id = session.getAttribute("loginId").toString(); //현재 로그인한 사람 아이디
	//해당 아이디 가지고 조회 예약정보 조회
	System.out.println("예약페이지 id : " + id);
	%>
	
	로그인 사용자 아이디 <%=id%>
</body>
</html>