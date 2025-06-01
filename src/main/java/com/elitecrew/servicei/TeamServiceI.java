package com.elitecrew.servicei;

import java.util.List;
import com.elitecrew.model.Team;
import com.elitecrew.model.TeamMembers;
public interface TeamServiceI {
    void saveTeam(Team t);
    void saveTeamMembers(TeamMembers tm);
    List<TeamMembers> getAllMembers();
    List<Team> getAllTeams();
    public List<TeamMembers> getAllMembersIncludingThisTeam(int teamId);
    public Team getTeam(int id);
    public void deleteTeam(int id);
    public void deleteMember(int id);
    void createTeamWithMembers(Team t, List<Integer> memberIds);
    List<TeamMembers> getAllTeamMembers();
    public TeamMembers getMember(int id);
}
