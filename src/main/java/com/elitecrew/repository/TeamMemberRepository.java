package com.elitecrew.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.elitecrew.model.TeamMembers;

import org.springframework.transaction.annotation.Transactional;

public interface TeamMemberRepository extends CrudRepository<TeamMembers, Integer>{

	@Modifying
	@Query("UPDATE TeamMembers tm SET tm.team = NULL WHERE tm.team.id = :teamId AND tm.id NOT IN :memberIds")
	void unassignMembersNotInList(@Param("teamId") int teamId, @Param("memberIds") List<Integer> memberIds);

	@Modifying
	@Transactional
	@Query("UPDATE TeamMembers tm SET tm.team = NULL WHERE tm.team.id = :teamId")
	void dissociateMembersFromTeam(@Param("teamId") int teamId);
	
	@Query("SELECT tm FROM TeamMembers tm WHERE tm.team IS NULL")
	List<TeamMembers> findUnassignedMembers();

	@Query("SELECT tm FROM TeamMembers tm WHERE tm.team IS NULL OR tm.team.id = :teamId")
	List<TeamMembers> findUnassignedOrBelongsToTeam(@Param("teamId") int teamId);


}
