package com.servlet;

import java.io.IOException;

import com.DB.DBConnection;
import com.dao.JOBDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/delete")
public class DeleteJob extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		int id=Integer.parseInt(req.getParameter("id"));
		JOBDAO dao=new JOBDAO(DBConnection.getConn());
		boolean f=dao.deleteJob(id);
        HttpSession session=req.getSession();
		
		
		if(f) {
			session.setAttribute("succmsg", "Job Deleted Succesfully");
			resp.sendRedirect("viewJob.jsp");
			
		}else {
			session.setAttribute("succmsg", "Something Went Wrong");
			resp.sendRedirect("viewJob.jsp");
			
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
