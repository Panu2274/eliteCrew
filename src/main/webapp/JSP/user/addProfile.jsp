<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Team Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand">EliteCrew User</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/user/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/contactUs">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/user/myProfile">My Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Add Profile Form -->
<div class="container mt-5">
 <div class="alert alert-warning" role="alert">
        Your profile does not exist. Please add your details below.
    </div>

    <h2 class="mb-4">Profile</h2>
    <form action="saveMember" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Member ID</label>
            <input type="number" class="form-control" id="id" name="id"  required>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name"  required>
        </div>
        <div class="mb-3">
            <label for="mob" class="form-label">Mobile Number</label>
            <input type="tel" class="form-control" id="mob" name="mob" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" name="email"  required>
        </div>
        <div class="mb-3">
            <label for="designation" class="form-label">Designation</label>
            <input type="text" class="form-control" id="designation" name="designation" required>
        </div>
        <div class="mb-3"> 
            <label for="experience" class="form-label">Experience (in years)</label>
            <input type="number" class="form-control" id="experience" name="experience"  required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<!-- Bootstrap JS Bundle (Required for dropdowns to work) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
