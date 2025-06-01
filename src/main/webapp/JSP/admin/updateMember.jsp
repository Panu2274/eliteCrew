<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Team Members</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<script type="text/javascript">

function deleteMember(){
	if (!getSelectedMem()) {
        alert("Please select a member to delete.");
        return;
    }
	if (confirm("Are you sure you want to delete this team member?")) {
		document.fn.action="deleteMember";
		document.fn.submit();
    }
	
}
function editMember(){
	if (!getSelectedMem()) {
        alert("Please select a member to edit.");
        return;
    }
	
		document.fn.action="editMem";
		document.fn.submit();
    
	
}
 function getSelectedMem() {
        const radios = document.getElementsByName("id");
        for (const radio of radios) {
            if (radio.checked) {
                return radio.value;
            }
        }
        return null;
    }

</script>


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
                    <a class="nav-link" href="/admin/adminPanel">Home</a>
                </li>
				               <!-- Team Members Dropdown -->
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" id="teamMembersDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				        Team Members
				    </a>
				    <ul class="dropdown-menu" aria-labelledby="teamMembersDropdown">
				        <li><a class="dropdown-item" href="/admin/teamMembers">Add</a></li>
				        <li><a class="dropdown-item active" href="/admin/updateMember">Update</a></li>
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
    <h2 class="mb-4">Team Members</h2>
    <form name="fn"> <!-- Add your action if needed -->
        <table class="table table-bordered table-striped">
            <thead class="table-primary">
                <tr>
                    <th>Select</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Designation</th>
                    <th>Experience</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="tm" items="${teamMembers}">
                    <tr>
                        <td><input type="radio" name="id" value="${tm.id}"></td>
                        <td>${tm.id}</td>
                        <td>${tm.name}</td>
                        <td>${tm.mob}</td>
                        <td>${tm.email}</td>
                        <td>${tm.designation}</td>
                        <td>${tm.experience}</td>
                        <td>
                            <button onclick="editMember()" type="button" class="btn btn-warning btn-sm" name="editBtn">Edit</button>
                            <button onclick="deleteMember()" type="button" class="btn btn-danger btn-sm" name="deleteBtn">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
</div>
<!-- Bootstrap JS Bundle (Required for dropdowns to work) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
