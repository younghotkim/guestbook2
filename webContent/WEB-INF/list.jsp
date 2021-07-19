<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/guestbook2/gbc" method="post">

		이름: <input type="text" name="name" value=""> 비밀번호: <input type="password" name="password" value=""> <br> <br>
		<textarea rows="10" cols="30" name="content" value=""></textarea>

		<!-- name값 조심해서 입력 -->

		<input type="text" name="action" value="insert">
		<button type="submit">등록</button>

	</form>







	<c:forEach items="${gList}" var="guestbookList">

		<table border="1" width="500" height="200" align="center">

			<tr height="10" align="center" padding="10px">
				<td>${guestbookList.no}</td>
				<td>${guestbookList.name}</td>
				<td>${guestbookList.reg_date}</td>
				<td><a href="/guestbook2/gbc?action=dform&no=${guestbookList.no}">[삭제]</a></td>
			</tr>
			<td colspan="4">${guestbookList.content}</td>
			<tr>
			</tr>


		</table>

		<br>
		<br>

	</c:forEach>









</body>
</html>