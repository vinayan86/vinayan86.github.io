package com.abctaxi.bo;

import java.time.ZonedDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class SelectedCar {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

public long getId() {
		return id;
	}
	
	public ZonedDateTime getDateCreated() {
		return DateCreated;
	}
	public void setDateCreated(ZonedDateTime dateCreated) {
		DateCreated = dateCreated;
	}
	public long getCar_id() {
		return car_id;
	}
	public void setCar_id(long car_id) {
		this.car_id = car_id;
	}
	public long getDriver_id() {
		return driver_id;
	}
	public void setDriver_id(long driver_id) {
		this.driver_id = driver_id;
	}
@Column(nullable = false, name = "date_created")
@DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
private ZonedDateTime DateCreated = ZonedDateTime.now();
private long car_id;
private long driver_id;

}
