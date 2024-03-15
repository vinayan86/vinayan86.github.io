package com.abctaxi.dao;



import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abctaxi.bo.SelectedCar;

public interface SelectedDao extends CrudRepository<SelectedCar, Integer> {
	

	@Transactional	
	@Modifying
	@Query(value="insert into selected_car (car_id,driver_id,date_created) values(:car_id,:s,now())",nativeQuery = true)
	void updateSelectedCar(@Param("car_id") long car_id,@Param("s")  long s);

}
