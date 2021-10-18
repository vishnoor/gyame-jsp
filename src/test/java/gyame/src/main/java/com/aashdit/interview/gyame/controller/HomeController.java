package com.aashdit.interview.gyame.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping(path = "/")
	public String home(Model  model)
	{
		model.addAttribute("module", "home");
		return "home";
	}
}
