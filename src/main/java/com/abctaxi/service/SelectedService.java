package com.abctaxi.service;

import com.abctaxi.dao.SelectedDao;

public interface SelectedService extends SelectedDao {

	void updateSelectedCar(long car_id, long s);

}
