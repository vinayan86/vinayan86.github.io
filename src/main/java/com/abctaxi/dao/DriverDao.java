package com.abctaxi.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abctaxi.bo.Driver;

public interface DriverDao extends CrudRepository<Driver, Integer> {
	
	@Transactional	
	@Query(value="select * from Driver where driver_name=:user_name",nativeQuery = true)
	List<Driver> SearchName(@Param("user_name") String user_name);


	@Transactional	
	@Query(value="select * from Driver where online_status='online'",nativeQuery = true)
	List<Driver> onlineUsers();
	
	@Transactional	
	@Modifying
	@Query(value="insert into users(user_name,user_password,user_type,date_created) values(:driver_name,:user_password,:user_type,now())",nativeQuery = true)
	void UpdateUser(@Param("driver_name") String driver_name,@Param("user_password") String user_password,@Param("user_type") String user_type);

	
}
