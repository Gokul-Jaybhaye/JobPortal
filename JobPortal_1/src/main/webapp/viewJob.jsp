<%@page import="com.DB.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"   %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

	
<%@ page import="com.dao.JOBDAO" %>

<%@ page import="com.entity.job.Jobs"%>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_compo/all_com.jsp"%>


</head>
<body>
<c:if test="${objus.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	
	<%@ include file="all_compo/navBar.jsp"%>

	<div class="container">



		
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<c:if test="${not empty succmsg}">
							<div class="alert alert-success" role="alert">${succmsg}</div>
							<c:remove var="succmsg" />
						</c:if>
				<% JOBDAO dao=new JOBDAO(DBConnection.getConn());
		           List<Jobs> list=dao.getAllJobs();
		           for(Jobs j:list){%>

				<div class="card mt-2">
				<div class="card-body">
					<div class="text-center text-primary">
						<i class="fa-solid fa-clipboard"></i>
					</div>
					
					 
					<h6><%=j.getTitle() %></h6>
					<p><%=j.getDescription() %></p>
					<br>
					<div class="form-row">
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Location:<%=j.getLocation() %>" readonly>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Category:<%=j.getCategory() %>" readonly>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Status:<%=j.getStatus() %>" readonly>
						</div>
					</div>
					<h6>Publish Date:<%=j.getPdate() %></h6>
					<div class="text-center">
						<a href="edit_job.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">Edit</a> 
						<a href="delete?id=<%=j.getId() %>" class="btn btn-sm bg-danger text-white">Delete</a>

					</div>
					</div>


				</div>
				<% }
				%>	   
			</div>
		</div>
	</div>
</body>
</html>