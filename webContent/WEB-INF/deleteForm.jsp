<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>
<%@ page import='java.util.List'%>

<%


	
	
	int no = (int)request.getAttribute("no");	
	//어트리뷰트 받기
	
	




%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="delete.jsp" method="get">
	
	비밀번호 <input type="password" name="password" value="">
	<input type="hidden" name="no" value="<%=no%>">
	
	<button type="submit">확인</button>
	
	</form>
	
 <p><a href="./list.jsp">처음으로 돌아가기</a></p>
	
</body>
</html>