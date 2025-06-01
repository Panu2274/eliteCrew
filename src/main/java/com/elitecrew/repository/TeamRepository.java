package com.elitecrew.repository;

import org.springframework.data.repository.CrudRepository;


import com.elitecrew.model.Team;

public interface TeamRepository extends CrudRepository<Team, Integer> {

}
