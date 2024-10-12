<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%@page import="com.DB.DBConnection"%>




<%@ page import="com.dao.JOBDAO" %>
<%@ page import="com.entity.job.Jobs" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Job</title>
<%@ include file="all_compo/all_com.jsp"%>


</head>
<body>
<c:if test="${objus.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	
	<%@ include file="all_compo/navBar.jsp"%>
	<div class="container p2">

		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					
					   <% 
					   int id=Integer.parseInt(request.getParameter("id"));
					   JOBDAO dao=new JOBDAO(DBConnection.getConn());
					   Jobs j=dao.getJobsById(id);%>
					<div class="text-center text-success">
						<h4>Edit Job</h4>
					</div>
					<form action="update" method="post">
						<input type="hidden" value="<%= j.getId()%>" name="id">
						<div class="form-group">
							<label>Title</label><input type="text" required="required"
								id="inputexample" class="form-control" name="title" value="<%=j.getTitle()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="Location"
									class="custom-select" id="locationid">
									<option value="<%=j.getLocation()%>"><%=j.getLocation() %></option>
									<option value="Pune">Pune</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Banglore">Banglore</option>
									<option value="Delhi">Delhi</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label><select name="Category"
									class="custom-select" id="locationid">
									<option value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
									<option value="IT">IT</option>
									<option value="Finace">Finace</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label><select name="status" class="form-control">
								    <option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>

						</div>
						<div class="form-group">
							<label>Job Description</label>
							<textarea rows="15" cols="" name="desc" class="form-control">
							<%=j.getDescription() %>
							</textarea>
						</div>

						<button class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>