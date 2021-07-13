<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>
<%@ page import='java.util.List'%>

<%


	
	
	int no = (int)request.getAttribute("guestNo");	
	//어트리뷰트 받기
	
	//어트리뷰트 받은 no를 html에서 사용




%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/guestbook2/gbc" method="post">
	
	비밀번호 <input type="password" name="password" value="">
	<input type="hidden" name="no" value="<%=no%>">
	<input type="hidden" name="action" value="delete">

	<button type="submit">확인</button>
	
	
	</form>
	
 <p><a href="/guestbook2/gbc?action=list">처음으로 돌아가기</a></p>
	
</body>
</html>