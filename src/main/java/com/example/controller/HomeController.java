package com.example.controller;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class HomeController {

	private final static Logger LOGGER = Logger.getLogger(HomeController.class.getName());

	@Value("${isDebug}")
	private boolean isDebug;
	
	
	@GetMapping("/account")
	public String account() {
		//return "Hi Welcome";
		
		return "account";
	}
	
	@GetMapping("/balance")
	public String balance() {
		return "You balancde is 10000";
	}
	
	@GetMapping("/update")
	public String update() {
		return "we have an update for you";
	}
	
	@GetMapping("/main")
	public String mainPage() {
		return "This is a main page";
	}
	
	@GetMapping("/publicweb")
	public String publico() {
		return "index"; 
	}

	@GetMapping("/privateweb")
	public String privado() {
		return "index";
				//String.format("""
				//<h1>Private route, only authorized personal! 🔐  </h1>
				//"""); 
	}
}
