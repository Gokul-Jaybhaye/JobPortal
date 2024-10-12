<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
<%@ include file="all_compo/all_com.jsp"%>

</head>
<body style="background-color:lightblue;">
	<%@ include file="all_compo/navBar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<h4>Registraion form</h4>
						</div>
						<form action="register" method="post">
							<div class="form-group">
								<label>Enter Your Name</label><input type="text"
									required="required" id="inputexample" class="form-control"
									name="name" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label>Enter Email</label><input type="email"
									required="required" id="inputexample" class="form-control"
									name="email" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label>Enter Qualification</label><input type="text"
									required="required" id="inputexample" class="form-control"
									name="quo" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label>Enter Password</label><input type="password"
									required="required" id="inputexample" class="form-control"
									name="password" aria-describedby="emailHelp">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
			<%@ include file="all_compo/footer.jsp" %>
		

	</div>


</body>
</html>