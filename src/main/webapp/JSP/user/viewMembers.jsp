<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Team Members</title>
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
                <li class="nav-item"><a class="nav-link active" href="/user/viewMembers">Team Members</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/myProfile">My Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/contactUs">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="mb-4">Team Members</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-info">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Designation</th>
                <th>Experience</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="tm" items="${teamMembers}">
                <tr>
                    <td>${tm.id}</td>
                    <td>${tm.name}</td>
                    <td>${tm.mob}</td>
                    <td>${tm.email}</td>
                    <td>${tm.designation}</td>
                    <td>${tm.experience}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Message and Add Profile Link -->
    <div class="text-center mt-4">
        <p class="text-muted">Your name is not in the list? <a href="/user/myProfile" class="btn btn-outline-primary btn-sm">Add your details</a></p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
