package net.virtusa.vyntramart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.virtusa.vyntramartbackend.dao.CategoryDAO;
import net.virtusa.vyntramartbackend.dto.Category;

@Controller
public class PageController {
	
	
	@Autowired
	private CategoryDAO womenCategoryDAO;
	@Autowired
	private CategoryDAO menCategoryDAO;
	
	@RequestMapping(value= {"/","/home","/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		
		//passing the list of categories
		mv.addObject("menCategoryDAO",menCategoryDAO.listCategory());

		mv.addObject("womenCategoryDAO",womenCategoryDAO.listCategory());
		mv.addObject("userClickHome", true);
		return mv;
	}
	@RequestMapping(value= "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	@RequestMapping(value= "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}
	
	/*
	 * method to load all women products
	 */
	
	@RequestMapping(value="/show/all/womenProducts")
	public ModelAndView showAllWomenProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Women Products");
		
		//passing the list of categories
		mv.addObject("menCategoryDAO",menCategoryDAO.listCategory());

		mv.addObject("womenCategoryDAO",womenCategoryDAO.listCategory());
		
		
		mv.addObject("userClickAllWomenProducts", true);
		return mv;
	}
	/*
	 * method to load women category products
	 */
	@RequestMapping(value="/show/women/{id}/products")
	public ModelAndView showWomenCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");
		
		//to fetch single category
		Category cW = null;
		cW = womenCategoryDAO.getCategory(id);
		mv.addObject("title", cW.getName());
		
		//passing the single category
		mv.addObject("womenCategory", cW);
		
		//passing the list of categories in header 
		mv.addObject("menCategoryDAO",menCategoryDAO.listCategory());

		mv.addObject("womenCategoryDAO",womenCategoryDAO.listCategory());
		
		
		mv.addObject("userClickWomenCategoryProducts", true);
		return mv;
	}
	
	/*
	 * method to load all men products
	 */
	
	@RequestMapping(value="/show/all/menProducts")
	public ModelAndView showAllMenProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Men Products");
		
		//passing the list of categories
		mv.addObject("menCategoryDAO",menCategoryDAO.listCategory());

		mv.addObject("womenCategoryDAO",womenCategoryDAO.listCategory());
		
		
		mv.addObject("userClickAllMenProducts", true);
		return mv;
	}
	
	/*
	 * method to load men category products
	 */
	@RequestMapping(value="/show/men/{idM}/products")
	public ModelAndView showMenCategoryProducts(@PathVariable("idM") int id) {
		ModelAndView mv = new ModelAndView("page");
		
		//to fetch single category
		Category cM = null;
		cM = menCategoryDAO.getCategory(id);
		mv.addObject("title", cM.getName());
		
		//passing the single category
				mv.addObject("menCategory", cM);
				
		//passing the list of categories in header 
		mv.addObject("menCategoryDAO",menCategoryDAO.listCategory());

		mv.addObject("womenCategoryDAO",womenCategoryDAO.listCategory());
		
		
		mv.addObject("userClickMenCategoryProducts", true);
		return mv;
	}
	
	
	
	
}
