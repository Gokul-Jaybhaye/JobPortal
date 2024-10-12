<%@ page import="com.DB.DBConnection"%>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	

	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_compo/all_com.jsp"%>
<style >
.back-img{
	background:url("img/work.png");
	width: 100%;
	height: 85vh;
	background-repeat: no-repeat;
	background-size: cover;	
	
	}
</style>
</head>
<body>
	<%@ include file="all_compo/navBar.jsp"%>
	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p4">Online Job Portal</h1>
		</div>

	</div>
	<%@ include file="all_compo/footer.jsp" %>

</body>

</html>
 