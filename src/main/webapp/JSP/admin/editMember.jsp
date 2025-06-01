<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Team Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body><!-- Navbar -->
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
        <li><a class="dropdown-item active " href="/admin/updateMember">Update</a></li>
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
<div class="container mt-5">
    <h2 class="mb-4">Update Team Member</h2>
    <form action="editMember">
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
   			<input type="text" class="form-control" id="designation" name="designation" value="${tm.designation}" required>
		</div>

        <div class="mb-3">
            <label for="experience" class="form-label">Experience (in years)</label>
            <input type="number" class="form-control" id="experience" name="experience" value="${tm.experience }" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
