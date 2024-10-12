package com.servlet;

import java.io.IOException;

import com.DB.DBConnection;
import com.dao.JOBDAO;
import com.entity.job.Jobs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/update")
public class UpdateServelet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try{
		int id=Integer.parseInt(req.getParameter("id"));
		String title=req.getParameter("title");
		String description=req.getParameter("desc");
		String location=req.getParameter("Location");
		String status=req.getParameter("status");
		String category=req.getParameter("Category");
		
		Jobs j =new Jobs();
		j.setId(id);
		j.setTitle(title);
		j.setDescription(description);
		j.setLocation(location);
		j.setStatus(status);
		j.setCategory(category);
		
		HttpSession session=req.getSession();
		
		JOBDAO dao=new JOBDAO(DBConnection.getConn());
		boolean f=dao.updateJob(j);
		if(f) {
			session.setAttribute("succmsg", "Job Updated  Succesfully");
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
