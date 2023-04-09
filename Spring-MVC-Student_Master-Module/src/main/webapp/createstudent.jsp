<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Student</p>
						<form:form action="studentsave" method="post" modelAttribute="student1">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Name
								</label> <input type="text" path="sname" class="form-control"
									name="sname" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">State
								</label> <input type="text" class="form-control" name="state"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">City
								</label> <input type="text" class="form-control" name="city"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Standard
								</label> <input type="text" class="form-control" name="standard"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">DOB </label>
								<input type="date" class="form-control" name="dOB"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>


							<div class="mb-3">
								<p>Gender</p>
								  <input type="radio" id="html" name="gender" value="male">
								  <label for="html">Male</label><br>   
								<input type="radio"
									id="css" name="gender" value="female">   <label
									for="css">Female</label>
							</div>


							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">TotalMarks
								</label> <input type="number" class="form-control" name="totalMarks" min="1"
									max="100" id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>

							<button class="btn btn-primary col-md-12">Submit</button>
						</form:form	>

					</div>
				</div>
			</div>
		</div>
	</div>


	<%-- <h1>Create Student!</h1>
	<form:form action="studentsave" modelAttribute="student1">
    Name:<form:input path="sname" />
		<br>
    State:<form:input path="state" />
		<br>
    City:<form:input path="city" />
		<br>
    Standard:<form:input path="standard" />
		<br>
     dob:<form:input path="dOB" type="date"/>
		<br>
      Gender:<form:input path="gender" />
		<br>
       Total Marks:<form:input path="totalMarks" />
		<br>
		<form:button>Save</form:button>
	</form:form> --%>
</body>
</html>