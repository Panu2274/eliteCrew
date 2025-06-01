package com.elitecrew.servicei;

import java.util.List;

import com.elitecrew.model.RegisteredUser;

public interface UserServiceI {

	public void saveUser(RegisteredUser u);
	boolean userExists(String username, String email);
	public List<RegisteredUser> getManagers();
	RegisteredUser loginCheck(String username, String password);
}
