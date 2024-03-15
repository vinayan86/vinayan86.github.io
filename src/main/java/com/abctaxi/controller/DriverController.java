package com.abctaxi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abctaxi.bo.Car;
import com.abctaxi.bo.Driver;
import com.abctaxi.service.CarService;
import com.abctaxi.service.DriverService;
import com.abctaxi.service.SelectedService;

@Controller
public class DriverController {
	@Autowired
	CarService car;
	@Autowired
	DriverService drive;
	@RequestMapping("/DriverHome")
	public ModelAndView Driver_Home()
	{
	
	
		List<Car> c= (List<Car>) car.viewAll();
		ModelAndView mv=new ModelAndView("Driver_Home.jsp");
		
		mv.addObject("cars",c);
			return mv ;

		
	}
	@Autowired
	SelectedService sel;
	@RequestMapping("/selectcar")
	public ModelAndView selectcar(@RequestParam long car_id, HttpSession se)
	{
		System.out.println(car_id);
		car.updatestatus(car_id);
	long s= (long) se.getAttribute("user_id");
	System.out.println(s);
	sel.updateSelectedCar(car_id,s);
	
	
		ModelAndView mv=new ModelAndView("Driver_Home.jsp");
		List<Car> c= (List<Car>) car.viewAll();
		mv.addObject("cars",c);
			return mv ;
	
	}
	
	@RequestMapping("/Driver")
	public String driver()
	{
		return "Driver.jsp";
	}
	@RequestMapping("/adddriver")
	public String addcar(Driver driver,@RequestParam String driver_name,@RequestParam String user_password,@RequestParam String user_type)
	{
		drive.save(driver);
		

	drive.UpdateUser(driver_name,user_password,user_type);
		
		return "Admin_home.jsp";
		
	}
	
}
