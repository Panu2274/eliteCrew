package com.elitecrew.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elitecrew.model.RegisteredUser;
import com.elitecrew.repository.UserRepository;
import com.elitecrew.servicei.UserServiceI;

@Service
public class UserServiceImpl implements UserServiceI{
	
	@Autowired
	UserRepository ur;
	
	@Override
	public void saveUser(RegisteredUser u) {
		System.out.println("In service");
		System.out.println(u.getFullname());
		ur.save(u);
	
	}
	@Override
	public boolean userExists(String username, String email) {
	    return ur.findByUsername(username) != null || ur.findByEmail(email) != null;
	}

	@Override
    public RegisteredUser loginCheck(String username, String password) {
        return ur.findByUsernameAndPassword(username, password);
    }
	
	@Override
    public List<RegisteredUser> getManagers() {
        return ur.findByRole("manager");
    }
}
