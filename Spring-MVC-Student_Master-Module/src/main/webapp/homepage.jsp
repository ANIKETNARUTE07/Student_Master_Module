<%@page import="com.ty.dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.ty.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <%@ include file="bootstrap.jsp" %> --%>

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
	<%-- <%@ include file="navbar.jsp" %> --%>
	
	<div class="container p-5">
		<div class="card">
			<div class="card-body">


				<p class="text-center fs-1">All Student Details</p>
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Full Name</th>
							<th scope="col">State</th>
							<th scope="col">City</th>
							<th scope="col">Standard</th>
							<th scope="col">DOB</th>
							<th scope="col">Gender</th>
							<th scope="col">Total Marks</th>
							<th scope="col">Action</th>

						</tr>
					</thead>
					<tbody>


						<c:forEach var="student" items="${students1}">

							<tr>
								<td>${student.getId()}</td>
								<td>${student.getSname()}</td>
								<td>${student.getState()}</td>
								<td>${student.getCity()}</td>
								<td>${student.getStandard()}</td>
								<td>${student.getDOB()}</td>
								<td>${student.getGender()}</td>
								<td>${student.getTotalMarks()}</td>
								<td><a href="editstudents?id=${student.getId()}"
									class="btn btn-sm btn-primary">Edit</a> <a
									href="deletestudents?id=${student.getId()}"
									class="btn btn-sm btn-danger ms-1">Delete</a></td>

							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</div>


</body>
</html>