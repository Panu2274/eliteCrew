<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Team</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
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
                <li class="nav-item"><a class="nav-link" href="/user/">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="/user/myTeam">My Team</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/viewMembers">Team Members</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/myProfile">My Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/contactUs">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Team Details -->
<div class="container mt-5">
    <h2 class="text-center mb-4">My Team</h2>

    <c:if test="${not empty team}">
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Team Name</th>
                    <th>Project Name</th>
                    <th>Team Description</th>
                    <th>Task Status</th>
                    <th>Team Lead</th>
                    <th>Members</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${team.id}</td>
                    <td>${team.teamName}</td>
                    <td>${team.projectName}</td>
                    <td>${team.teamDesc}</td>
                    <td>${team.taskStatus}</td>
                    <td>${team.teamLead}</td>
                    <td>
                        <ul>
                            <c:forEach var="member" items="${team.members}">
                                <li>${member.name} - ${member.designation}</li>
                            </c:forEach>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty team}">
        <div class="alert alert-warning text-center">You are not assigned to any team yet.</div>
    </c:if>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
