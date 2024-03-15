package com.abctaxi.dao;



import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abctaxi.bo.Car;
import com.abctaxi.bo.Driver;


public interface CarDao extends CrudRepository<Car, Integer> {
	
	

	@Transactional	
	@Modifying
	@Query(value="update Car  set status = 1 where car_id = :car_id",nativeQuery = true)
	void updatestatus( @Param("car_id") long car_id);
	
	@Transactional	
	@Modifying
	@Query(value="select * from Car where status=0",nativeQuery = true)
	List<Car> viewAll();
	
	@Transactional	
	@Query(value="select * from Car where rating=:rating",nativeQuery = true)
	List<Car> searchrating(@Param("rating") String rating);
	

	@Transactional	
	@Query(value="select * from Car where licence_number=:licence",nativeQuery = true)
	List<Car> searchlicence(String licence);
	
	
	

}
