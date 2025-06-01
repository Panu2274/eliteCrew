<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Teams</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand">EliteCrew Admin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="/admin/adminPanel">Home</a>
        </li>

		 <!-- Team Members Dropdown -->
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" id="teamMembersDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Team Members
    </a>
    <ul class="dropdown-menu" aria-labelledby="teamMembersDropdown">
        <li><a class="dropdown-item" href="/admin/teamMembers">Add</a></li>
        <li><a class="dropdown-item" href="/admin/updateMember">Update</a></li>
        <li><a class="dropdown-item" href="/admin/viewMember">View</a></li>
    </ul>
</li>

<!-- Teams Dropdown -->
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" id="teamsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Teams
    </a>
    <ul class="dropdown-menu" aria-labelledby="teamsDropdown">
        <li><a class="dropdown-item" href="/admin/createTeam">Create</a></li>
        <li><a class="dropdown-item" href="/admin/updateTeam">Update</a></li>
        <li><a class="dropdown-item active" href="/admin/viewTeams">View</a></li>
    </ul>
</li>
        <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
      </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <h2 class="text-center mb-4">All Teams</h2>

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
        </thead><tbody>
    <c:forEach var="team" items="${teams}">
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
    </c:forEach>
</tbody>

    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
