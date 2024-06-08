package com.example.controller;

import java.io.IOException;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {

	private final static Logger LOGGER = Logger.getLogger(LoginController.class.getName());

	@Value("${isDebug}")
	private boolean isDebug;

	@RequestMapping(value = "/login2", method = RequestMethod.GET)
	public String login(ModelMap model) {
		if (this.isDebug) {
			LOGGER.info("[GET - View] : login");
		}

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login2(ModelMap model) {
		if (this.isDebug) {
			LOGGER.info("[GET - View] : login");
		}

		return "login";
	}
	
	@GetMapping("/loja")
	public String homeLoja2(ModelMap model, RedirectAttributes redirectAttributes, Authentication authentication)
			throws IOException {
		return "index2"; 
	}

}
