package com.abctaxi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abctaxi.bo.Driver;
import com.abctaxi.service.DriverService;

@Controller
public class SearchController {
	
	@Autowired
	DriverService drive;
	@RequestMapping("searchname")
	public ModelAndView searchname(@RequestParam String user_name)
	{
		ModelAndView mv=new ModelAndView("Admin_home.jsp");
		List<Driver> s=(List<Driver>) drive.SearchName(user_name);
		mv.addObject("Details",s);
		return mv;
		
	}
	

	
	@RequestMapping("onlineDriver")
	public ModelAndView onlineDriver()
	{
		
		
		ModelAndView mv=new ModelAndView("OnlineUsers.jsp");
		List<Driver> s=(List<Driver>) drive.onlineUsers();
		mv.addObject("Details",s);
		return mv;
		
	}

}
