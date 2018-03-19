package com.niit.HARDWAREonlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "home", "/index" })
	public ModelAndView index() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value = {"/contect"})
	public ModelAndView contect() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "contect");
		mv.addObject("userClickcontect", true);
		return mv;
	}

	@RequestMapping(value = {"/about"})
	public ModelAndView about() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = {"/Help"})
	public ModelAndView Help() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Help");
		mv.addObject("userClickhelp", true);
		return mv;
	}

	@RequestMapping(value= {"/view prodect"})
public ModelAndView viewprodect() {
	
	ModelAndView mv=new ModelAndView("page");
	mv.addObject("title","view");
	mv.addObject("userClickview",true);
	return mv;
}

}