package com.abctaxi.service;

import java.util.List;

import com.abctaxi.bo.Users;
import com.abctaxi.dao.UserActionsDao;

public interface UserService extends UserActionsDao {


	List<Users> CheckLogin(String user_name, String user_password);

	void updateStatus(long user_id);

	void updateStatusReverse(long user_id);
	
	

}
