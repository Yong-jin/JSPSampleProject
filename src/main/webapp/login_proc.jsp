<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//수신받는 id pw 가지고 맞는 아이디 비번 
		//로그인 성공 로그인 실패!!
		
	 	String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id + " " + pw);
		
		// db 아이디 비번 비교 맞아요!! 로그인 성공!!
		
		// getParameter 로 읽어온 id, pw -> DAO 연결해서 DB 값이 있는지 체크
		// 가입시점 -> 이름, 전화번호, 이메일은, 아이디, 	비밀번호 -> Account 테이블 저장! id pw
		
		//DB랑 확인해서 정상이면!?
		/*if(로그인 성공인지?) {
			session.setAttribute("loginId", id);  //abc
		}
		else {
				
			}
		*/
	%>
</body>
</html>