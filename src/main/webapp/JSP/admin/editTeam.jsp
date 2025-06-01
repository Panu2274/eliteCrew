<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Team</title>
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
        <li><a class="dropdown-item " href="/admin/updateMember">Update</a></li>
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
        <li><a class="dropdown-item active" href="/admin/updateTeam">Update</a></li>
        <li><a class="dropdown-item" href="/admin/viewTeams">View</a></li>
    </ul>
</li>

        <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
      </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="text-center mb-4">Update Team</h2>

    <form action="editTeam" method="post">
        <!-- Team ID -->
        <div class="mb-3">
            <label for="id" class="form-label">Team ID</label>
            <input type="number" class="form-control" id="id" name="id" value="${t.id}" readonly>
        </div>

        <!-- Team Name -->
        <div class="mb-3">
            <label for="teamName" class="form-label">Team Name</label>
            <input type="text" class="form-control" id="teamName" name="teamName" value="${t.teamName}" required>
        </div>

        <!-- Project Name -->
        <div class="mb-3">
            <label for="projectName" class="form-label">Project Name</label>
            <input type="text" class="form-control" id="projectName" name="projectName" value="${t.projectName}" required>
        </div>

        <!-- Team Members (Checkboxes) -->
        <div class="mb-3">
            <label class="form-label">Select Team Members</label>
            <c:forEach var="member" items="${teamMembers}">
                <div class="form-check">
                <input class="form-check-input" type="checkbox" name="memberIds" value="${member.id}" id="member_${member.id}"
       			<c:if test="${fn:contains(memberIdsAsString, member.id)}">checked</c:if> >

                    <label class="form-check-label" for="member_${member.id}">
                        ${member.name} - ${member.designation}
                    </label>
                </div>
            </c:forEach>
            <small class="form-text text-muted">Check all members you want to include in the team.</small>
        </div>

        <!-- Team Description -->
        <div class="mb-3">
            <label for="teamDesc" class="form-label">Team Description</label>
            <textarea class="form-control" id="teamDesc" name="teamDesc" rows="3" required>${t.teamDesc}</textarea>
        </div>

        <!-- Task Status -->
        <div class="mb-3">
            <label for="taskStatus" class="form-label">Task Status</label>
            <select class="form-select" id="taskStatus" name="taskStatus" required>
                <option value="">-- Select Status --</option>
                <option value="assigned" <c:if test="${t.taskStatus eq 'assigned'}">selected</c:if>>Assigned</option>
                <option value="incomplete" <c:if test="${t.taskStatus eq 'incomplete'}">selected</c:if>>Incomplete</option>
                <option value="completed" <c:if test="${t.taskStatus eq 'completed'}">selected</c:if>>Completed</option>
            </select>
        </div>

        <!-- Team Lead (Only Managers) -->
        <div class="mb-3">
            <label for="teamLead" class="form-label">Team Lead (Only Manager)</label>
            <select class="form-select" id="teamLead" name="teamLead" required>
                <option value="">-- Select Team Lead --</option>
                <c:forEach var="mgr" items="${managers}">
                    <option value="${mgr.fullname}" <c:if test="${t.teamLead eq mgr.fullname}">selected</c:if>>
                        ${mgr.fullname} (${mgr.username})
                    </option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-primary w-100">Update Team</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
