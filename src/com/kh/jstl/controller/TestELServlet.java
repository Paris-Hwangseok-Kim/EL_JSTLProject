package com.kh.jstl.controller;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TestELServlet
 */
@WebServlet("/testEL.do")
public class TestELServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestELServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// request영역
		request.setAttribute("test1", "리퀘스트 영역 데이터입니다.");
//		request.setAttribute("result", "리퀘스트 결과");

		// session 영역
		HttpSession session = request.getSession();

		session.invalidate();
		session.setAttribute("test2", "세션 영역 데이터 입니다.");
//		session.setAttribute("result", "세션 결과");

		// application 영역
		ServletContext application = request.getServletContext();
		application.setAttribute("test3", "서버 전체 영역입니다.");
		application.setAttribute("result", "서버 전체 결과");

		request.getRequestDispatcher("views/el/testScope.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
