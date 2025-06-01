package com.elitecrew.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.elitecrew.model.RegisteredUser;
import com.elitecrew.servicei.UserServiceI;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserServiceI ui;
	@RequestMapping("/")
	public String homePage() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}
	@RequestMapping("/register")
	public String registerPage() {
		return "register";
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute RegisteredUser u) {
	    if (ui.userExists(u.getUsername(), u.getEmail())) {
	        return "regError";
	    }
	    ui.saveUser(u);
	    return "redirect:/login?success=true";  // redirect with a success flag
	}


	@RequestMapping("/contactUs")
	public String contactUsPage() {
		return "contactUs";
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccessPage(@RequestParam("username") String username, @RequestParam("password") String password) {
	    RegisteredUser user = ui.loginCheck(username, password);

	    if (user != null) {
	        
	        String role = user.getRole().toLowerCase();

	        switch (role) {
	            case "admin":
	                return "redirect:/admin/adminPanel";
	            case "manager":
	                return "redirect:/manager/";
	            case "user":
	                return "redirect:/user/";
	           
	        }
	    } else {
	        return "logError"; 
	    }
		return "userTeam";
	}

	
	
}
