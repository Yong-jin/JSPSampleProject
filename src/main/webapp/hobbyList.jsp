<%@ page import="db.dto.HobbyDTO"%>
<%@ page import="java.util.List"%>
<%@ page import="db.dao.HobbyDAO"%>
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
		HobbyDAO hobbyDAO = new HobbyDAO();
	
		List<HobbyDTO> hobbyList = hobbyDAO.findHobbyList();
	%>

	
	<%@ include file="navigation.jsp" %>
	
	<h1>취미목록</h1>
	
	
	<table>
		<tr>
			<th>아이디</th>
			<th>순번</th>
			<th>취미</th>
			<th>선호도</th>
		</tr>
		<%
		if(hobbyList != null) {
			for(HobbyDTO hobby : hobbyList){
		%>
			<tr>
				<td><%=hobby.getId()%></td>
				<td><%=hobby.getNo()%></td>
				<td><%=hobby.getHobby()%></td>
				<td><%=hobby.getPrefer()%></td>
			</tr>
		<%
			}
		}
		%>
	</table>
</body>
</html>