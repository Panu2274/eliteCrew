<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EliteCrew | User Dashboard</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
    	

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
    <div class="container-fluid">
        <a class="navbar-brand">EliteCrew - User Panel</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="/user/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/myTeam">My Team</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/viewMembers">Team Members</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/myProfile">My Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/contactUs">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Welcome Section -->
<div class="container mt-5 text-center">
    <h2>Welcome User!</h2>
    <p>Explore your teams, view team members, and update your profile using the navigation bar.</p>
</div>

<!-- Quick Access Cards -->
<div class="container mt-4">
    <div class="row justify-content-center g-4">
        <div class="col-md-3">
            <div class="card border-info shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">My Profile</h5>
                    <p class="card-text">Add or update your personal details.</p>
                    <a href="/user/myProfile" class="btn btn-info">Edit Profile</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-info shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">My Team</h5>
                    <p class="card-text">View team assigned to you.</p>
                    <a href="/user/myTeam" class="btn btn-info">View Team</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-info shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Team Members</h5>
                    <p class="card-text">See list of members.</p>
                    <a href="/user/viewMembers" class="btn btn-info">View Members</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-info shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Contact Us</h5>
                    <p class="card-text">Need help? Reach out to us.</p>
                    <a href="/user/contactUs" class="btn btn-info">Contact</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
