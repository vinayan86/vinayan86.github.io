package com.abctaxi.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abctaxi.bo.Car;
import com.abctaxi.bo.Users;
import com.abctaxi.service.CarService;
import com.abctaxi.service.UserService;

@Controller
public class MainController {
	@Autowired
	UserService userservice;
	@Autowired
	CarService car;

	@RequestMapping("/")
	public String index() {
		return "index.jsp";

	}

	@RequestMapping("home")
	public String Admin_home() {
		return "Admin_home.jsp";

	}

	@RequestMapping("/signup")
	public String signup(Users user) {
		userservice.save(user);

		return "index.jsp";

	}

	@RequestMapping("/loginActions")
	public ModelAndView login(@RequestParam String user_name, @RequestParam String user_password ,HttpSession session) {
		String user_type="";
		String username="";
		long user_id=0;
		
		List<Users> s = (List<Users>) userservice.CheckLogin(user_name, user_password);
		for (Users m : s) 
		{
		user_type=m.getUser_type();
		username=m.getUser_name();
		user_id=m.getUser_id();
		}
		
		ModelAndView mv = new ModelAndView();
		if (s.isEmpty()) 
		{
			mv.setViewName("/");
			mv.addObject("error", "You are not Authorized person to Sign in.....");
			return mv;
		} 
		else
		{
			session.setAttribute("usernames",username );
			session.setAttribute("user_id",user_id );
				if (user_type.equalsIgnoreCase("Admin") == true)
				{
					
					mv.setViewName("Admin_home.jsp");
					return mv;

				}

				else if(user_type.equalsIgnoreCase("user") == true)
				{
userservice.updateStatus(user_id);
					List<Car> c = (List<Car>) car.viewAll();
					mv.addObject("cars", c);
			
					mv.setViewName("Driver_Home.jsp");
					
				
					

				}
				return mv;
			}
			
		
	
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		long user_id=(long) session.getAttribute("user_id");
		userservice.updateStatusReverse(user_id);
		session.removeAttribute("usernames");
		session.removeAttribute("user_id");
		return "index.jsp";
	}
	

}
