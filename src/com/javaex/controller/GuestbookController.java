package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.GuestbookDao;
import com.javaex.vo.GuestbookVo;

@WebServlet("/gbc")
public class GuestbookController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("컨트롤러");
		
		String action = request.getParameter("action");
		System.out.println(action);
		
		if ("list".equals(action)) {
			
			System.out.println("===리스트===");
			
			GuestbookDao guestbookDao = new GuestbookDao();
			
			List<GuestbookVo> guestbookList = guestbookDao.getGuestbookList();
			
			request.setAttribute("gList", guestbookList);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/list.jsp");
			rd.forward(request, response);
			
		}else if("insert".equals(action)) {
			
			System.out.println("등록");
			
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String content = request.getParameter("content");
			
			GuestbookVo guestbookVo = new GuestbookVo(name, password, content);
			
			GuestbookDao guestbookDao = new GuestbookDao();
			
			int count = guestbookDao.guestbookInsert(guestbookVo);
			
			if (count > 0) {
				System.out.println("등록완료");
				//리다이렉트 리스트 (action=list)
				response.sendRedirect("/guestbook2/gbc?action=list");
			} else {
				System.out.println("등록실패");
			} 
			
			
			} else if ("delete".equals(action)) {
				
				System.out.println("===삭제===");
				//password꺼내기
				String password = request.getParameter("password");
				//no꺼내기
				int no = Integer.parseInt(request.getParameter("no"));
				//dao사용
				GuestbookDao guestbookDao = new GuestbookDao();
				//쿼리문 이용하여 삭제실행
				int count = guestbookDao.guestbookDelete(no, password);

				if (count > 0) {
					
					System.out.println("삭제완료");
					//리다이렉트 리스트 (action=list)
					response.sendRedirect("/guestbook2/gbc?action=list");
					
				} else {
					
					System.out.println("삭제실패");
					
				}				
				
				
			} else if ("dform".equals(action)) {
			//파라미터에서 no꺼내기
			int no = Integer.parseInt(request.getParameter("no"));
			
			request.setAttribute("no", no);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/deleteForm.jsp");
			rd.forward(request, response);	
	
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
