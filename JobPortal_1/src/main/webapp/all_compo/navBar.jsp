<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<c:if test="${objus.role eq 'admin' }">
				<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
						class="fa-solid fa-plus"></i>Post Job </a></li>

				<li class="nav-item"><a class="nav-link " href="viewJob.jsp"><i
						class="fa-solid fa-eye"></i>View Job</a></li></c:if>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<a href="login.jsp" class="btn btn-light mr-1"><i
					class="fa-solid fa-right-to-bracket"></i>Login</a> <a href="signup.jsp"
					class="btn btn-light"><i class="fa-solid fa-user"></i> SignUp</a>
			</form>
		</div>
	</nav>
</body>
</html>