package com.abctaxi.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



import com.abctaxi.bo.Car;
import com.abctaxi.bo.Driver;
import com.abctaxi.service.CarService;


@Controller
public class CarController {
	
	@Autowired
	CarService car;
	
	@RequestMapping("Car")
	public ModelAndView Car()
	{

	ModelAndView mv=new ModelAndView("car.jsp");

		return mv ;
		
	}
	@RequestMapping("/addcar" )
	public String addcar(Car cars)
	{
		car.save(cars);
		
		return "Admin_home.jsp";
		
	}
	
	@RequestMapping("searchrating")
	public ModelAndView searchrating(@RequestParam String rating)
	{
		ModelAndView mv=new ModelAndView("SearchView.jsp");
		List<Car> s=(List<Car>) car.searchrating(rating);
		mv.addObject("Details",s);
		return mv;
		
	}
	
	@RequestMapping("searchlicence")
	public ModelAndView searchlicence(@RequestParam String licence)
	{
		ModelAndView mv=new ModelAndView("SearchView.jsp");
		List<Car> s=(List<Car>) car.searchlicence(licence);
		mv.addObject("Details",s);
		return mv;
		
	}
	
}
