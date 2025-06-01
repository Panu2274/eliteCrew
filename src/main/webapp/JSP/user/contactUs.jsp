<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EliteCrew | Contact Us</title>

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
                <li class="nav-item"><a class="nav-link" href="/user/myProfile">My Profile</a></li>
                <li class="nav-item"><a class="nav-link active" href="/user/contactUs">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container pt-5 d-flex justify-content-center">
  <div class="card p-4 shadow-sm" style="max-width: 600px; width: 100%;">
    <h3 class="card-title text-info text-center mb-4">Contact Us</h3>
    <form action="submitContact" method="post">
      <div class="mb-3">
        <label for="name" class="form-label">Full Name</label>
        <input type="text" class="form-control" id="name" name="name" required />
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" id="email" name="email" required />
      </div>
      <div class="mb-3">
        <label for="subject" class="form-label">Subject</label>
        <input type="text" class="form-control" id="subject" name="subject" required />
      </div>
      <div class="mb-3">
        <label for="message" class="form-label">Message</label>
        <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
      </div>
      <button type="submit" class="btn btn-info w-100">Send Message</button>
    </form>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
