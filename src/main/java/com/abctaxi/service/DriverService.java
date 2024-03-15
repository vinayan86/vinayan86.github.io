package com.abctaxi.service;

import java.util.List;

import com.abctaxi.bo.Driver;
import com.abctaxi.dao.DriverDao;

public interface DriverService extends DriverDao {

	List<Driver> SearchName(String user_name);

	List<Driver> onlineUsers();

	void UpdateUser(String driver_name, String user_password, String user_type);

	

}
