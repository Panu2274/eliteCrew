<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create New Team</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-success-subtle text-dark">

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">EliteCrew - Manager Panel</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" 
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="/manager/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/viewTeams">Teams</a></li>
                <li class="nav-item"><a class="nav-link active" href="/manager/createTeam">Create New Team</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/updateTeam">Update Teams</a></li>
                <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5 bg-white p-5 rounded shadow">
    <h2 class="text-center mb-4 text-success">Create New Team</h2>

    <form action="saveTeam" method="post">
        <!-- Team ID -->
        <div class="mb-3">
            <label for="id" class="form-label text-success">Team ID</label>
            <input type="number" class="form-control" id="id" name="id" required>
        </div>

        <!-- Team Name -->
        <div class="mb-3">
            <label for="teamName" class="form-label text-success">Team Name</label>
            <input type="text" class="form-control" id="teamName" name="teamName" required>
        </div>

        <!-- Project Name -->
        <div class="mb-3">
            <label for="projectName" class="form-label text-success">Project Name</label>
            <input type="text" class="form-control" id="projectName" name="projectName" required>
        </div>

        <!-- Team Members (Checkboxes) -->
        <div class="mb-3">
            <label class="form-label text-success">Select Team Members</label>
            <div class="form-check">
                <c:forEach var="member" items="${teamMembers}">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" 
                               name="memberIds" value="${member.id}" id="member_${member.id}">
                        <label class="form-check-label" for="member_${member.id}">
                            ${member.name} - ${member.designation}
                        </label>
                    </div>
                </c:forEach>
            </div>
            <small class="form-text text-muted">Check all members you want to include in the team.</small>
        </div>

        <!-- Team Description -->
        <div class="mb-3">
            <label for="teamDesc" class="form-label text-success">Team Description</label>
            <textarea class="form-control" id="teamDesc" name="teamDesc" rows="3" required></textarea>
        </div>

        <!-- Task Status -->
        <div class="mb-3">
            <label for="taskStatus" class="form-label text-success">Task Status</label>
            <select class="form-select" id="taskStatus" name="taskStatus" required>
                <option value="">-- Select Status --</option>
                <option value="assigned">Assigned</option>
                <option value="incomplete">Incomplete</option>
                <option value="completed">Completed</option>
            </select>
        </div>

        <!-- Team Lead (Only Managers) -->
        <div class="mb-3">
            <label for="teamLead" class="form-label text-success">Team Lead (Only Manager)</label>
            <select class="form-select" id="teamLead" name="teamLead" required>
                <option value="">-- Select Team Lead --</option>
                <c:forEach var="mgr" items="${managers}">
                    <option value="${mgr.fullname}">${mgr.fullname} (${mgr.username})</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-success w-100">Create Team</button>
    	<a href="/manager/" class="btn btn-secondary w-100 mt-2">Cancel</a>
	
   
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
