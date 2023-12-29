<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>마이페이지</h1>
	
	<% 
	if(session != null && session.getAttribute("loginId") != null){
		String id = session.getAttribute("loginId").toString(); //현재 로그인한 사람 아이디
		//해당 아이디 가지고 조회 예약정보 조회
		System.out.println("마이페이지 id : " + id);
	%>
		로그인 사용자 아이디 <%=id%>
		
		<form action="logout.jsp" method="post">
			<button type="submit">로그아웃</button>
		</form>
	<%
	} else {
		//로그인안한거
		System.out.println("로그인 안함");
		
		//로그인을 안했을때 보여줄 화면
		//location 로그인 안하면 접근안됨.
		%>
		<script>
		alert('잘못된 접근입니다.(로그인 필요)');
		location.href="login.jsp";
		</script>
		<%
	}
	%>
</body>
</html>