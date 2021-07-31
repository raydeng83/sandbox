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
    <h1>User Detail</h1>
    <hr/>
    <div>
        <ul class="list-group">
            <li class="list-group-item">Customer Id: ${customer.customerId}</li>
            <li class="list-group-item">Customer Name: ${customer.customerName}</li>
            <li class="list-group-item">First Name: ${customer.firstName}</li>
            <li class="list-group-item">Last Name: ${customer.lastName}</li>
            <li class="list-group-item">Email: ${customer.email}</li>
            <li class="list-group-item">Birth Date: ${customer.dateOfBirth}</li>
            <li class="list-group-item">Country: ${customer.country}</li>
        </ul>
    </div><br />
    <a type="button" href="/" class="btn btn-primary">Back</a>
</div>
</body>
</html>

