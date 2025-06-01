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
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/admin")
public class TeamController {

	@Autowired
	TeamServiceI ti;
	
	@Autowired
	UserServiceI ui;
	
	
	@RequestMapping("/adminPanel")
	public String homePage(Model model) {
	    int totalTeams = ti.getAllTeams().size();
	    int totalMembers = ti.getAllTeamMembers().size();
	    int totalManagers = ui.getManagers().size();

	    model.addAttribute("totalTeams", totalTeams);
	    model.addAttribute("totalMembers", totalMembers);
	    model.addAttribute("totalManagers", totalManagers);

	    return "admin/adminPanel"; 
	}

    
    @RequestMapping("/teamMembers")
    public String addMembers() {
    	return "admin/teamMembers";
    }
    
    @RequestMapping("/saveTeam")
    public String saveTeam(@ModelAttribute Team t,
                           @RequestParam(value = "memberIds", required = false) List<Integer> memberIds) {
        
        ti.createTeamWithMembers(t, memberIds);
        return "redirect:/admin/viewTeams";
    }

    
    @RequestMapping("/createTeam")
    public String createTeamForm(Model m) {
        List<TeamMembers> teamMembers =ti.getAllMembers();
        List<RegisteredUser> managers = ui.getManagers();

        m.addAttribute("teamMembers", teamMembers);
        m.addAttribute("managers", managers);
        return "admin/createTeam";
    }


    @RequestMapping("/saveTeamMembers")
    public String saveTeamMembers(@ModelAttribute TeamMembers tm) {
    	ti.saveTeamMembers(tm);
    	return "redirect:/admin/adminPanel";
    }
    
    @RequestMapping("/viewTeams")
    public String viewTeam(Model m) {
    	List<Team> teams = ti.getAllTeams();
    	m.addAttribute("teams",teams);
    	return "admin/viewTeams";
    }
    
    @RequestMapping("/updateTeam")
    public String updatePage(Model m) {
    	List<Team> teams = ti.getAllTeams();
    	m.addAttribute("teams",teams);
    	return "admin/updateTeam";
    }
    
    @RequestMapping("/delete")
    public String deleteTeam(@RequestParam("id") int id,Model m) {
    	ti.deleteTeam(id);
     List<Team> teams = ti.getAllTeams();
 	m.addAttribute("teams",teams);
 	return "admin/updateTeam";
    }
    
    @RequestMapping("/edit")
    public String editTeamPage(@RequestParam("id") int id, Model m) {
        Team t = ti.getTeam(id);

        List<TeamMembers> allMembers = ti.getAllMembersIncludingThisTeam(t.getId());
      
        List<RegisteredUser> managers = ui.getManagers();        

        String memberIdsAsString = t.getMembers().stream()
            .map(member -> String.valueOf(member.getId()))
            .collect(Collectors.joining(","));

        m.addAttribute("t", t);
        m.addAttribute("teamMembers", allMembers);
        m.addAttribute("managers", managers);
        m.addAttribute("memberIdsAsString", memberIdsAsString);

        return "admin/editTeam";
    }

    
    @RequestMapping("/editTeam")
    public String updateTeamPage(@ModelAttribute Team t,Model m,
            @RequestParam(value = "memberIds", required = false) List<Integer> memberIds) {
    	ti.saveTeam(t);
    	ti.createTeamWithMembers(t, memberIds);
     	return "redirect:/admin/updateTeam";
    }
    
    
    @RequestMapping("/viewMember")
    public String viewMembers(Model m) {
        List<TeamMembers> members = ti.getAllTeamMembers(); // Adjust service method as per your structure
        m.addAttribute("teamMembers", members);
        return "admin/viewMembers"; // JSP file name
    }

    
    @RequestMapping("/updateMember")
    public String updateMemberPage(Model m) {
    	List<TeamMembers> members = ti.getAllTeamMembers(); // Adjust service method as per your structure
        m.addAttribute("teamMembers", members);
    	return "admin/updateMember";
    }
    
    @RequestMapping("/deleteMember")
    public String deleteMember(@RequestParam("id") int id,Model m) {
    	ti.deleteMember(id);
    	List<TeamMembers> members = ti.getAllTeamMembers(); // Adjust service method as per your structure
        m.addAttribute("teamMembers", members);
        return "admin/updateMember";
    }
    
    @RequestMapping("/editMem")
    public String editMemberPage(@RequestParam("id") int id, Model m) {
        TeamMembers tm = ti.getMember(id);
        m.addAttribute("tm", tm);        
        return "admin/editMember";
    }

    
    @RequestMapping("/editMember")
    public String updateMemPage(@ModelAttribute TeamMembers tm,Model m) {
    	ti.saveTeamMembers(tm);
    	List<TeamMembers> members = ti.getAllTeamMembers(); // Adjust service method as per your structure
        m.addAttribute("teamMembers", members);
     	return "redirect:/admin/updateMember";
    }

}
