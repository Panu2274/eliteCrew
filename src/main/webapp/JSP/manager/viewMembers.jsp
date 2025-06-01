<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Team Members</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-success-subtle text-dark">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand">EliteCrew - Manager Panel</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="/manager/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/viewTeams">Teams</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/createTeam">Create New Team</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/updateTeam">Update Teams</a></li>
                <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container mt-5 bg-white p-4 rounded shadow">
    <h2 class="text-center text-success mb-4">Team Members</h2>
    
    <table class="table table-hover table-bordered align-middle">
        <thead class="table-success text-center">
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
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
