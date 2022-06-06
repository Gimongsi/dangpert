package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dangpert.dao.UserDAO;
import com.dangpert.dto.UserDTO;
import com.dangpert.mail.SendMail;
import com.dangpert.utils.EncryptionUtils;
import com.google.gson.Gson;

@WebServlet("*.user")
public class UserController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		
		if(uri.equals("/signup.user")) { // 회원가입 요청
			String user_id = request.getParameter("user_id");
			String user_pw = request.getParameter("user_pw");
			String user_name = request.getParameter("user_name");
			String user_phone = request.getParameter("user_phone");
			
			UserDAO dao = new UserDAO();
			try {
				user_pw = EncryptionUtils.getSHA512(user_pw);
				System.out.println("user 암호화 비밀번호 :" + user_pw);
				int rs = dao.insert(new UserDTO(0, user_id, user_pw, user_name, user_phone, null, null, null));
				
				if (rs > 0) {
					response.sendRedirect("/user/login.jsp");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		} else if (uri.equals("/idCheckPopup.user")) {
			response.sendRedirect("/user/popup.jsp");
			
		} else if (uri.equals("/idCheck.user")) { // 아이디 체크
			String user_id = request.getParameter("user_id");
			System.out.println(user_id);
			SendMail sm = new SendMail();
			UserDAO dao = new UserDAO();
			try {
				boolean rs = dao.idCheck(user_id);
				if (rs) {
					request.setAttribute("rs","ok");
					int RanNum = sm.compare(user_id);
					request.setAttribute("compareNum", RanNum);
				} else {
					request.setAttribute("rs", "no");
				}
				
				request.setAttribute("user_id", user_id);
				request.getRequestDispatcher("/user/popup.jsp").forward(request, response);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(uri.equals("/compare.user")){ // 유저 인증
			String user_id = request.getParameter("compareUser");
			
			request.setAttribute("user_id", user_id);
			request.getRequestDispatcher("/user/popup.jsp").forward(request, response);
			
			
			
		} else if (uri.equals("/login.user")) { // 로그인 페이지 요청
			response.sendRedirect("/user/login.jsp");
		} else if (uri.equals("/loginOk.user")) { // 로그인 확인
			String user_id = request.getParameter("user_id");
			String user_pw = request.getParameter("user_pw");
			
			UserDAO dao = new UserDAO();
			try {
				user_pw = EncryptionUtils.getSHA512(user_pw);
				
				UserDTO dto = dao.loginOk(user_id, user_pw);
				if (dto != null) {
					System.out.println("로그인 성공!");
					request.setAttribute("rs", true);
					HttpSession session = request.getSession();
					session.setAttribute("loginSession", dto);
					
				} else {
					System.out.println("로그인 실패!");
					request.setAttribute("rs", false);
				}
				request.getRequestDispatcher("/main.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/toSignup.user")) { // 회원가입 페이지 요청
			response.sendRedirect("/user/signup.jsp");
		} else if (uri.equals("/logout.user")) { // 로그아웃 요청
			HttpSession session = request.getSession();
			session.getAttribute("loginSession");
			session.removeAttribute("loginSession");
			response.sendRedirect("/main.jsp");
			
		} else if (uri.equals("/toMypage.user")) { // 마이 페이지 요청
			response.sendRedirect("/user/mypage.jsp");
		}
		
		
		
		
	}

}
