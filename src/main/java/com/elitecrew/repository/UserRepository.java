package com.elitecrew.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.elitecrew.model.RegisteredUser;

public interface UserRepository extends CrudRepository<RegisteredUser, Integer>{

	RegisteredUser findByUsername(String username);
	RegisteredUser findByEmail(String email);
	RegisteredUser findByUsernameAndPassword(String username, String password);
	List<RegisteredUser> findByRole(String role);
}
