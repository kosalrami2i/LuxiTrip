package com.ideas2it.luxitrip.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;  

import com.ideas2it.luxitrip.dao.impl.UserDaoImpl;
import com.ideas2it.luxitrip.model.User;
import com.ideas2it.luxitrip.exception.UserException;
import com.ideas2it.luxitrip.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDaoImpl userDao;
	
	/**
	 * Method used to create the User with the User detail 
	 * @param User it get the user detail to store
	 * @throws UserException
	 */
	public void createUser(User user) throws UserException {
	    user.setRole("User");
		userDao.insertUser(user);
	}
	
	/**
	 * Method used to delete the user from the stroage in the given UserId
	 * @param userId
	 * @throws UserException
	 */
	public void deleteUser(int userId) throws UserException {
		if(0 == userDao.deleteUser(userId)) {
			throw new UserException("Unable to delete " + userId);
		}
	}
	
	/**
	 * Method used to update the userDetail from the existing detail
	 * @param user
	 * @throws UserException
	 */
	public void updateUser(User user) throws UserException {
		userDao.updateUser(user);
	}
	
    /**
     * Method used to retrieve the List of users in the database in form of list	
     * @return the list of users
     * @throws UserException
     */
	public List<User> retrieveUsers() throws UserException {
		return userDao.getUsers();
	}
	
	/**
	 * Method used to retrieve the User in the given userId
	 * @param userId
	 * @return the given User in the userId
	 * @throws UserException
	 */
	public User retrieveUserById(int userId) throws UserException {
		return userDao.getUserById(userId);
	}

}
