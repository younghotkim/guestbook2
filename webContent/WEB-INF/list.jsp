<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>    


<%
	
	List<GuestbookVo> guestbookList = (List<GuestbookVo>)request.getAttribute("gList");
	
    System.out.println("==========JSP=========");
	System.out.println(guestbookList);	

	
%>    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
	<form action="/guestbook2/gbc" method="get">
	
		이름: <input type="text" name="name" value=""> 비밀번호: <input type="password" name="password" value="">
		<br><br>
		<textarea rows="10" cols="30" name="content" value=""></textarea>
		
		<!-- name값 조심해서 입력 -->
	
		<input type="text" name="action" value="insert">
		<button type="submit">등록</button>
	
	</form>





	
	
	<%
		for(int i=0; i<guestbookList.size(); i++) {
	%>
	
			<table border="1" width="500" height="200" align = "center"> 
			
				<tr height = "10" align = "center" padding="10px">
					<td><%=guestbookList.get(i).getNo() %></td>
					<td><%=guestbookList.get(i).getName() %></td>
					<td><%=guestbookList.get(i).getReg_date()%></td>
					<td><a href="/guestbook2/gbc?action=dform&no=<%=guestbookList.get(i).getNo()%>">[삭제]</a></td>
				</tr>
					<td colspan ="4"><%=guestbookList.get(i).getContent() %></td>
				<tr>
				</tr>


			</table>
			
			<br>
			<br>
	
	
	
	
	<%
		}
	%>









</body>
</html>