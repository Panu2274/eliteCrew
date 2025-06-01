package com.elitecrew.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.elitecrew.model.Team;
import com.elitecrew.model.TeamMembers;
import com.elitecrew.repository.TeamMemberRepository;
import com.elitecrew.repository.TeamRepository;
import com.elitecrew.servicei.TeamServiceI;

@Service
public class TeamServiceImpl implements TeamServiceI{

	@Autowired
	TeamRepository tr;
	@Autowired
	TeamMemberRepository tmr;
	@Override
	public List<TeamMembers> getAllMembers() {
		
		return tmr.findUnassignedMembers();
	}
	
	@Override
	public List<TeamMembers> getAllMembersIncludingThisTeam(int teamId) {
	    return tmr.findUnassignedOrBelongsToTeam(teamId);
	}

	@Override
	public void saveTeam(Team t) {
		tr.save(t);
	}
	
	@Override
	public void saveTeamMembers(TeamMembers tm) {
	   
	        tmr.save(tm);
	    
	}


	@Override
	public List<Team> getAllTeams() {
		
		return (List<Team>) tr.findAll();
	}
	@Override
	@Transactional
	public void createTeamWithMembers(Team t, List<Integer> memberIds) {
	    
	    Team savedTeam = tr.save(t);  // assuming ID is generated here
	    if (memberIds != null && !memberIds.isEmpty()) {
	        tmr.unassignMembersNotInList(savedTeam.getId(), memberIds);
	    } else {
	        // If no members selected, unassign all
	        tmr.dissociateMembersFromTeam(savedTeam.getId());
	    }
	    if (memberIds != null && !memberIds.isEmpty()) {
	        for (Integer memberId : memberIds) {
	           
	            TeamMembers member = tmr.findById(memberId).get();
	            if (member != null) {
	                member.setTeam(savedTeam);  // Assign team
	                tmr.save(member);
	            }
	        }
	    }
	}
	@Override
	public void deleteTeam(int id) {
		tmr.dissociateMembersFromTeam(id);
		tr.deleteById(id);
		
	}

	@Override
	public void deleteMember(int id) {
		
		tmr.deleteById(id);
		
	}
	@Override
	public Team getTeam(int id) {
		
		return tr.findById(id).get();
	}

	@Override
	public List<TeamMembers> getAllTeamMembers() {
		
		return (List<TeamMembers>) tmr.findAll();
	}

	@Override
	public TeamMembers getMember(int id) {
		return tmr.findById(id).orElse(null);
	}

	

}
