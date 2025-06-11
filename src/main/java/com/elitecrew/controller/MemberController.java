package com.elitecrew.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.elitecrew.model.RegisteredUser;
import com.elitecrew.model.Team;
import com.elitecrew.model.TeamMembers;
import com.elitecrew.servicei.TeamServiceI;
import com.elitecrew.servicei.UserServiceI;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/user")
public class MemberController {

	@Autowired
	TeamServiceI ti;
	
	@Autowired
	UserServiceI ui;
	
	
	@RequestMapping("/")
	public String homePage(Model model) {
	    
	    return "user/userPanel"; 
	}

	@RequestMapping("/contactUs")
	public String contactPage(Model model) {
	    
	    return "user/contactUs"; 
	}
	
	@RequestMapping("/myProfile")
	public String myProfilePage(HttpSession session, Model model) {
        Integer memberId = (Integer) session.getAttribute("memberId");
        if (memberId != null) {
            TeamMembers tm = ti.getMember(memberId);
            if (tm != null) 
            {
                model.addAttribute("tm", tm);
                return "user/myProfile"; 
             }
            
            session.removeAttribute("memberId");
        }
      
        return "user/checkMember";
    }

	@RequestMapping("/checkUser")
	public String userExistsOrNot(@RequestParam("id") int id, HttpSession session, Model m) {
	    TeamMembers tm = ti.getMember(id);

	    if (tm == null || tm.getId() == 0) {
	       
	        System.out.println("Member not found with ID: " + id);

	        session.setAttribute("memberId", id);

	        return "user/addProfile";
	    }

	    // Member exists
	    session.setAttribute("memberId", id);
	    m.addAttribute("tm", tm);
	    ti.saveTeamMembers(tm);
	    return "user/myProfile";
	}


	@RequestMapping("/addProfile")
    public String saveTeamMembers(@ModelAttribute TeamMembers tm, HttpSession session) {
        ti.saveTeamMembers(tm);
        session.setAttribute("memberId", tm.getId());
        return "redirect:/user/";
    }
	@RequestMapping("/saveMember")
	public String addOrEdit(@ModelAttribute TeamMembers tm, HttpSession session, Model m) {
	    TeamMembers existing = ti.getMember(tm.getId());

	    if (existing != null) {
	        // Preserve existing team
	        if (tm.getTeam() == null || tm.getTeam().getId() == 0) {
	            tm.setTeam(existing.getTeam());
	        }
	    }

	    ti.saveTeamMembers(tm);
	    session.setAttribute("memberId", tm.getId());
	    return "redirect:/user/";
	}


	@RequestMapping("/myTeam")
	public String viewMyTeam(HttpSession hs, Model m) {
	    Integer userId = (Integer) hs.getAttribute("memberId");
	    
	    TeamMembers tm = ti.getMember(userId);

	    // Check if member or team is null
	    if (tm == null || tm.getTeam() == null) {
	        return "user/notfound"; // Redirect to notfound.jsp
	    }

	    int tid = tm.getTeam().getId();
	    Team t = ti.getTeam(tid);

	    m.addAttribute("team", t);
	    System.out.println("Team Id: " + tid);

	    return "user/myTeam"; // If team exists
	}

	 
	 @RequestMapping("/viewMembers")
	    public String viewMembers(Model m) {
	        List<TeamMembers> members = ti.getAllTeamMembers(); // Adjust service method as per your structure
	        m.addAttribute("teamMembers", members);
	        return "user/viewMembers"; 
	    }

	 
	 @RequestMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate();
	        return "redirect:/"; 
	    }
	 
	 
}
