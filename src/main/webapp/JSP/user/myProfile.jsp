<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    
    
</head>
<body>

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
                <li class="nav-item"><a class="nav-link" href="/user/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/myTeam">My Team</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/viewMembers">Team Members</a></li>
                <li class="nav-item"><a class="nav-link active" href="/user/myProfile">My Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/contactUs">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <div class="card shadow-sm p-4">
        <h2 class="mb-4 text-primary">Profile</h2>
        
        <!-- Existing record message -->
        <div class="alert alert-info">
            Existing record found — you can update your profile below.
        </div>

        <form action="saveMember" method="post">
            <div class="mb-3">
                <label for="id" class="form-label">Member ID</label>
                <input type="number" class="form-control" id="id" name="id" value="${tm.id }" required>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${tm.name }" required>
            </div>
            <div class="mb-3">
                <label for="mob" class="form-label">Mobile Number</label>
                <input type="tel" class="form-control" id="mob" name="mob" value="${tm.mob }" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" value="${tm.email }" required>
            </div>
            <div class="mb-3">
                <label for="designation" class="form-label">Designation</label>
                <input type="text" class="form-control" id="designation" name="designation" value="${tm.designation }" required>
            </div>
            <div class="mb-3"> 
                <label for="experience" class="form-label">Experience (in years)</label>
                <input type="number" class="form-control" id="experience" name="experience" value="${tm.experience }" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
