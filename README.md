# 💼 EliteCrew – Precision Team Management System

**EliteCrew** is a role-based team management web application built using **Spring Boot**, **JSP**, **HTML/CSS/JS**, and **MySQL**. It features secure login, role-wise dashboards, and full CRUD operations for managing teams and members.

---

## 🚀 Features at a Glance

### 👑 Admin Panel
- 🔧 Full control over Teams (CRUD)
- 👥 Manage all Team Members (CRUD)
- 👤 Assign Manager as Team Lead
- 🧭 Navigate to all modules

### 🧑‍💼 Manager Panel
- ✅ Only has CRUD access for Teams
- ❌ Cannot manage team members

### 🙋‍♂️ User Panel
- 👀 View assigned Team details
- 📝 View and Update own Profile
- 📋 View other team members

---

## 🔐 Authentication & Role-Based Access

- 🔐 Login system checks the **role** of the user (`ADMIN`, `MANAGER`, or `USER`)
- 👨‍💼 Redirects to appropriate panel based on role
- 👁️‍🗨️ Unauthorized access to other roles’ panels is blocked

---

## 🛠️ Tech Stack

| Layer        | Technology Used            |
|--------------|-----------------------------|
| Frontend     | HTML, CSS, JavaScript, JSP  |
| Backend      | Java, Spring Boot, Spring MVC |
| Template     | JSTL, JSP Pages             |
| Database     | MySQL (hosted on Railway)   |
| Deployment   | Spring Boot WAR file        |
| Tools Used   | Eclipse IDE, GitHub, Postman, Railway, MySQL Workbench |

---

## 🌐 Live Deployment
http://elitecrew-project.et.r.appspot.com/


---

