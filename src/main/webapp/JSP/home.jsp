<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>EliteCrew | Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">EliteCrew</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="/register">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container text-center mt-5">
    <h1 class="display-4 text-primary">Welcome to EliteCrew</h1>
    <p class="lead">Precision Team Management for Modern Organizations</p>
    <a href="login" class="btn btn-primary btn-lg mt-3">Get Started</a>
	<!-- Features Section -->
<div class="row mt-5">
    <div class="col-md-4">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="card-title">Efficient Team Management</h5>
                <p class="card-text">Create, assign, and manage teams seamlessly with our intuitive tools.</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="card-title">Real-time Collaboration</h5>
                <p class="card-text">Keep everyone in sync with live updates and notifications.</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="card-title">Detailed Reports</h5>
                <p class="card-text">Monitor team performance and productivity with insightful analytics.</p>
            </div>
        </div>
    </div>
</div>

<!-- About Section -->
<div class="mt-5">
    <h2>About EliteCrew</h2>
    <p>EliteCrew is designed to empower managers and team leads to streamline team operations, improve productivity, and foster collaboration in modern workplaces. Whether you manage a small team or a large organization, EliteCrew scales with your needs.</p>
</div>

<!-- Call to Action -->
<div class="mt-4">
    <a href="/register" class="btn btn-outline-primary btn-lg">Join EliteCrew Today</a>
</div>
	
</div>

<!-- Footer -->
<footer class="bg-primary text-white text-center py-3 mt-5">
    <p class="mb-0">© 2025 EliteCrew – All Rights Reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
