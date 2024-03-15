package com.abctaxi.bo;

import java.time.ZonedDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Car {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private long car_id;
	  @NotNull
	  @Size(min=2, max=30)
private String licence_number;
	  @NotNull
private int seat_count;
	  @NotNull
private String convertible;

	@NotNull
private int rating;
	  @NotNull
private String engine_type;
private int status;

public int getStatus() {
	return status;
}




public void setStatus(int status) {
	this.status = status;
}
private String manufacture;

@Column(nullable = false, name = "date_created")
@DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
private ZonedDateTime DateCreated = ZonedDateTime.now();
public long getCar_id() {
	return car_id;
}




public String getManufacture() {
	return manufacture;
}
public void setManufacture(String manufacture) {
	this.manufacture = manufacture;
}
public ZonedDateTime getDateCreated() {
	return DateCreated;
}
public void setDateCreated(ZonedDateTime dateCreated) {
	DateCreated = dateCreated;
}
public String getEngine_type() {
	return engine_type;
}
public void setEngine_type(String engine_type) {
	this.engine_type = engine_type;
}


public String getLicence_number() {
	return licence_number;
}
public void setLicence_number(String licence_number) {
	this.licence_number = licence_number;
}
public int getSeat_count() {
	return seat_count;
}
public void setSeat_count(int seat_count) {
	this.seat_count = seat_count;
}
public String getConvertible() {
	return convertible;
}
public void setConvertible(String convertible) {
	this.convertible = convertible;
}
public int getRating() {
	return rating;
}
public void setRating(int rating) {
	this.rating = rating;
}

}
