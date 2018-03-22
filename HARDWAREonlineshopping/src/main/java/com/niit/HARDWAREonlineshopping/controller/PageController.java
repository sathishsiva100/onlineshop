package com.niit.HARDWAREonlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.HARDWARESbackend.dao.CategoryDAO;

@Controller
public class PageController {
	
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = { "/", "home", "/index" })
	public ModelAndView index() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		
		
		
		//passing the list of categories
		mv.addObject("categories",categoryDAO.list());
		
		
		mv.addObject("userClickHome", true);
		return mv;
	}

	
	@RequestMapping(value = {"/about"})
	public ModelAndView about() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = {"/contact"})
	public ModelAndView Help() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "contact");
		mv.addObject("userClickContact", true);
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