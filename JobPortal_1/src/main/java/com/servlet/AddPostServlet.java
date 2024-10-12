package com.servlet;
//import com.entity.job.Jobs;

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
@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String title=req.getParameter("title");
			String description=req.getParameter("desc");
			String location=req.getParameter("Location");
			String status=req.getParameter("status");
			String category=req.getParameter("Category");
			
			Jobs j=new Jobs();
			j.setTitle(title);
			j.setCategory(category);
			j.setLocation(location);
			j.setDescription(description);
			j.setStatus(status);
			HttpSession session=req.getSession();
			
			JOBDAO dao=new JOBDAO(DBConnection.getConn());
			boolean f=dao.addJobs(j);
			if(f) {
				session.setAttribute("succmsg", "Job Posted Succesfully");
				resp.sendRedirect("add_job.jsp");
				
			}else {
				session.setAttribute("succmsg", "Something Wrong on Server");
				resp.sendRedirect("add_job.jsp");
				
			}
					
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	
	

}
