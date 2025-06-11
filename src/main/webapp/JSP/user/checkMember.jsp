<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Member ID</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
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
    <h2>Check Member ID</h2>
    <form action="checkUser">
        <div class="mb-3">
            <label for="id" class="form-label">Enter Member ID To check your record exist or not</label>
            <input type="number" class="form-control" id="id" name="id" required />
        </div>
        <button type="submit" class="btn btn-primary">Check</button>
        <a href="/user/" class="btn btn-secondary w-100 mt-2">Cancel</a>
	
   
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
