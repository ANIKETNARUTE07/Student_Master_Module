<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Student Managment System</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="viewallstudents">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="studentload">add
						student</a>
			</ul>
		</div>
	</div>
</nav>

</head>
<body>
	<form:form action="updatestudents" modelAttribute="student">
    	<form:hidden path="id"/>
    	Name:<form:input path="sname" />
			<br>
    	State:<form:input path="state" />
			<br>
    	City:<form:input path="city" />
			<br>
    	Standard:<form:input path="standard" />
			<br>
    	dob:<form:input path="dOB" />
			<br>
    	Gender:<form:input path="gender" />
			<br>
    	Total Marks:<form:input path="totalMarks" />
			<br>
		<form:button>Update</form:button>
</form:form>
</body>
</html>