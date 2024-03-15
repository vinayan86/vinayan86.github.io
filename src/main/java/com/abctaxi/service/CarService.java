package com.abctaxi.service;

import java.util.List;

import com.abctaxi.bo.Car;
import com.abctaxi.bo.Driver;
import com.abctaxi.dao.CarDao;

public interface CarService extends CarDao {

	void updatestatus(long car_id);

	List<Car> viewAll();
	List<Car> searchrating(String rating);

	List<Car> searchlicence(String licence);

	

}
