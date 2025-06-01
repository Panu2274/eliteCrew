package com.elitecrew.model;

//import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.*;
import jakarta.persistence.ManyToMany;

@Entity
public class Team {
	
	@Id
	private int id;
	@Column(name = "team_name")
	private String teamName;
	private String projectName;
	@OneToMany(mappedBy = "team", cascade = CascadeType.ALL)
	private List<TeamMembers> members;

	private String teamDesc;
	private String taskStatus;//completed,assigned,incomplete etc
	private String teamLead;//only manager can be team lead
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public List<TeamMembers> getMembers() {
		return members;
	}
	public void setMembers(List<TeamMembers> members) {
		this.members = members;
	}
	public String getTeamDesc() {
		return teamDesc;
	}
	public void setTeamDesc(String teamDesc) {
		this.teamDesc = teamDesc;
	}
	public String getTaskStatus() {
		return taskStatus;
	}
	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}
	public String getTeamLead() {
		return teamLead;
	}
	public void setTeamLead(String teamLead) {
		this.teamLead = teamLead;
	}
	

}
