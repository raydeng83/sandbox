<!DOCTYPE html>
<html lang="en">
<head>
<title>Web Application 1 - Demo Customer Table</title>

<link href="/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.container {
	margin-top: 80px;
}

.bg-dark {
	background-color: #3b8dbd !important;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<h1 class="navbar-brand">Web Application 1 - Demo Customer Table</h1>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

	</nav>
	<div class="container">

		<form class="form-inline" method="post" action="/add">
			<input
				type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
				id="customerName" name="customerName" placeholder="Customer name" />
				
			
			<input
				type="text"  class="form-control mb-2 mr-sm-2 mb-sm-0" id="email"
				placeholder="Email" name="email" /> 
				
				
			<input type="date"
				 class="form-control mb-2 mr-sm-2 mb-sm-0" id="dateOfBirth"
				placeholder="Birthdate" name="dateOfBirth" />

			<input
					type="text"  class="form-control mb-2 mr-sm-2 mb-sm-0" id="firstName"
					placeholder="First Name" name="firstName" />

			<input
					type="text"  class="form-control mb-2 mr-sm-2 mb-sm-0" id="lastName"
					placeholder="Last Name" name="lastName" />

			<input
					type="text"  class="form-control mb-2 mr-sm-2 mb-sm-0" id="country"
					placeholder="Country" name="country" />


			<button type="submit" class="btn btn-primary">Add</button>
		</form>

		<br/>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>Customer name</th>
					<th>Email</th>
					<th>Birthdate</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<#list model["customers"] as customer>
				<tr>
					<th scope="row">${customer.customerId}</th>
					<td><a href="/detail/${customer.customerId}">${customer.customerName}</a></td>
					<td>${customer.email}</td>
					<td>${customer.dateOfBirth}</td>
					<td><a class="btn btn-sm btn-warning" role="button"
						href="/delete/${customer.customerId}">Delete</a></td>
				</tr>
				</#list>
			</tbody>
		</table>

	</div>

</body>
</html>

