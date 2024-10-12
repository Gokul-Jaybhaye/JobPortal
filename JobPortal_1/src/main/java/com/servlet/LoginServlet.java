package com.servlet;

import java.io.IOException;

import com.entity.job.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String em=req.getParameter("email");
			String ps=req.getParameter("password");
			User u=new User();
			HttpSession session=req.getSession();
			if("admin@gmail.com".equals(em) &&"admin@1".equals(ps)) {
				session.setAttribute("objus", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}else {
				//session.setAttribute("objus", "Wrong Password or Username");
				//resp.sendError(404, "WrongPassword");
				//resp.sendRedirect("admin.jsp");
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	

}
