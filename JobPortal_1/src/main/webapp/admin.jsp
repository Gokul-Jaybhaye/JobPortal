<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_compo/all_com.jsp"%>
<style type="text/css">
.back-img{
	background-image: url("img/admin.jpeg");
	width: 100%;
	height: 85vh;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>

</head>
<body>
<c:if test="${objus.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	
	<%@ include file="all_compo/navBar.jsp"%>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p4">Welcome to Admin page</h1>
		</div>

	</div>
		<%@ include file="all_compo/footer.jsp" %>
	

</body>
</html>