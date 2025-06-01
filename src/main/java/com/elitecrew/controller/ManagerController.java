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
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	TeamServiceI ti;
	
	@Autowired
	UserServiceI ui;
	
	
	@RequestMapping("/")
	public String homePage(Model model) {
	    int totalTeams = ti.getAllTeams().size();
	    int totalMembers = ti.getAllTeamMembers().size();
	    int totalManagers = ui.getManagers().size();

	    model.addAttribute("totalTeams", totalTeams);
	    model.addAttribute("totalMembers", totalMembers);
	    model.addAttribute("totalManagers", totalManagers);

	    return "manager/managerPanel"; 
	}

    
   
    
    @RequestMapping("/saveTeam")
    public String saveTeam(@ModelAttribute Team t,
                           @RequestParam(value = "memberIds", required = false) List<Integer> memberIds) {
        
        ti.createTeamWithMembers(t, memberIds);
        return "redirect:/manager/viewTeams";
    }

    
    @RequestMapping("/createTeam")
    public String createTeamForm(Model m) {
        List<TeamMembers> teamMembers =ti.getAllMembers();
        List<RegisteredUser> managers = ui.getManagers();

        m.addAttribute("teamMembers", teamMembers);
        m.addAttribute("managers", managers);
        return "manager/createTeam";
    }


    
    @RequestMapping("/viewTeams")
    public String viewTeam(Model m) {
    	List<Team> teams = ti.getAllTeams();
    	m.addAttribute("teams",teams);
    	return "manager/viewTeams";
    }
    
    @RequestMapping("/updateTeam")
    public String updatePage(Model m) {
    	List<Team> teams = ti.getAllTeams();
    	m.addAttribute("teams",teams);
    	return "manager/updateTeam";
    }
    
    @RequestMapping("/delete")
    public String deleteTeam(@RequestParam("id") int id,Model m) {
    	ti.deleteTeam(id);
     List<Team> teams = ti.getAllTeams();
 	m.addAttribute("teams",teams);
 	return "manager/updateTeam";
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

        return "manager/editTeam";
    }

    
    @RequestMapping("/editTeam")
    public String updateTeamPage(@ModelAttribute Team t,Model m,
            @RequestParam(value = "memberIds", required = false) List<Integer> memberIds) {
    	ti.saveTeam(t);
    	ti.createTeamWithMembers(t, memberIds);
     	return "redirect:/manager/updateTeam";
    }
    
    
    @RequestMapping("/viewMembers")
    public String viewMembers(Model m) {
        List<TeamMembers> members = ti.getAllTeamMembers(); // Adjust service method as per your structure
        m.addAttribute("teamMembers", members);
        return "manager/viewMembers"; // JSP file name
    }

    
}
