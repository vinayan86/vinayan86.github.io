package com.abctaxi.bo;

import java.time.ZonedDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long user_id;
private String user_name;
@Column(nullable = false, name = "date_created")
@DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
private ZonedDateTime DateCreated = ZonedDateTime.now();
private String  user_type;
public String getUser_type() {
	return user_type;
}

public void setUser_type(String user_type) {
	this.user_type = user_type;
}

public Long getUser_id() {
	return user_id;
}

public ZonedDateTime getDateCreated() {
	return DateCreated;
}
public void setDateCreated(ZonedDateTime dateCreated) {
	DateCreated = dateCreated;
}
private String user_password;

public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}

public String getUser_password() {
	return user_password;
}
public void setUser_password(String user_password) {
	this.user_password = user_password;
}

}
