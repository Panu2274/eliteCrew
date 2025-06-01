<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EliteCrew | Manager Panel</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<!-- Navbar -->
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
                <li class="nav-item"><a class="nav-link active" href="/manager/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/viewTeams">Teams</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/createTeam">Create New Team</a></li>
                <li class="nav-item"><a class="nav-link" href="/manager/updateTeam">Update Teams</a></li>
                <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Welcome -->
<div class="container mt-5 text-center">
    <h2>Welcome Manager!</h2>
    <p>Use the navigation bar to manage your teams efficiently.</p>
</div>

<!-- Summary & Quick Actions -->
<div class="container mt-5">
    <div class="row text-center">
        <div class="col-md-3">
            <div class="card border-success shadow-sm mb-4">
                <div class="card-body">
                    <h5 class="card-title">Total Teams</h5>
                    <p class="card-text display-6 text-success">${totalTeams}</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-success shadow-sm mb-4">
                <div class="card-body">
                    <h5 class="card-title">Total Members</h5>
                    <p class="card-text display-6 text-success">${totalMembers}</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card border-success shadow-sm mb-4">
                <div class="card-body">
                    <h5 class="card-title">Total Managers</h5>
                    <p class="card-text display-6 text-success">${totalManagers}</p>
                </div>
            </div>
        </div>
        <!-- Quick Action: View Members -->
        <div class="col-md-3">
            <div class="card border-success shadow-sm mb-4">
                <div class="card-body">
                    <h5 class="card-title">Quick Action</h5>
                    <p class="card-text">Want to check team members?</p>
                    <a href="/manager/viewMembers" class="btn btn-success">View Members</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Tips Section -->
<div class="container mt-4">
    <h4 class="text-success">Tips for Effective Team Management</h4>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">Assign clear roles and responsibilities to team members.</li>
        <li class="list-group-item">Regularly review team progress and resolve blockers.</li>
        <li class="list-group-item">Communicate goals and expectations clearly.</li>
    </ul>
</div>

<!-- Motivational Quote -->
<div class="container mt-5 mb-5">
    <blockquote class="blockquote text-success">
        <p>"The strength of the team is each individual member. The strength of each member is the team."</p>
        <footer class="blockquote-footer">Phil Jackson</footer>
    </blockquote>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
