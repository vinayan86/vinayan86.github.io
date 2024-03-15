package com.abctaxi.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abctaxi.bo.Users;

public interface UserActionsDao extends CrudRepository<Users, Integer> {
	@Transactional	
	@Query(value="select * from users where user_name= :user_name and user_password= :user_password",nativeQuery = true)
	List<Users> CheckLogin( @Param("user_name") String user_name,@Param("user_password") String user_password);
	

	@Transactional	
	@Modifying
	@Query(value="update Driver  set online_status ='online' where driver_id = :user_id",nativeQuery = true)
	void updateStatus( @Param("user_id") long user_id);
	
	
	@Transactional	
	@Modifying
	@Query(value="update Driver  set online_status ='offline' where driver_id = :user_id",nativeQuery = true)
	void updateStatusReverse(long user_id);
}
