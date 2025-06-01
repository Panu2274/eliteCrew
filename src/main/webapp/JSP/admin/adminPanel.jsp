<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EliteCrew | Admin Panel</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<!-- Navbar --><!-- Navbar -->
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
          <a class="nav-link active" aria-current="page" href="/admin/adminPanel">Home</a>
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
        <li><a class="dropdown-item" href="/admin/viewTeams">View</a></li>
    </ul>
</li>

        <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
      </ul>
        </div>
    </div>
</nav>

<!-- Main Content --><div class="container mt-5">
    <h2 class="text-center mb-4">Welcome to EliteCrew Admin Panel</h2>
    
    <div class="row mb-4">
        <!-- Total Teams Card -->
       <!-- Total Teams Card -->
<div class="col-md-4">
    <div class="card text-white bg-success mb-3">
        <div class="card-body">
            <h5 class="card-title">Total Teams</h5>
            <p class="card-text display-6">${totalTeams}</p>
        </div>
    </div>
</div>

<!-- Total Members Card -->
<div class="col-md-4">
    <div class="card text-white bg-info mb-3">
        <div class="card-body">
            <h5 class="card-title">Team Members</h5>
            <p class="card-text display-6">${totalMembers}</p>
        </div>
    </div>
</div>

<!-- Total Managers Card -->
<div class="col-md-4">
    <div class="card text-white bg-warning mb-3">
        <div class="card-body">
            <h5 class="card-title">Managers</h5>
            <p class="card-text display-6">${totalManagers}</p>
        </div>
    </div>
</div>

        </div>
    </div>

    <hr />

    <div class="text-center">
        <h4>Quick Actions</h4>
        <a href="/admin/teamMembers" class="btn btn-outline-primary m-2">Add Member</a>
        <a href="/admin/createTeam" class="btn btn-outline-success m-2">Create Team</a>
        <a href="/admin/viewMember" class="btn btn-outline-info m-2">View Members</a>
        <a href="/admin/viewTeams" class="btn btn-outline-warning m-2">View Teams</a>
    </div>
</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
