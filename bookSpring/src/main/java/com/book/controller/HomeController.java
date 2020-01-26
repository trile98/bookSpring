package com.book.controller;


import java.util.List;
import java.util.Locale;

import org.springframework.context.annotation.Conditional;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.book.database.AccountMapper;
import com.book.database.DatabaseJDBC;
import com.book.database.ProductHomeMapper;
import com.book.model.Account;
import com.book.model.Product;

@Controller
public class HomeController {

	@RequestMapping(value = "/Home")
    public String showHomepage(ModelMap modelMap) {
		
		modelMap.addAttribute("listProduct",GetListProduct());
        return "Home";
    }
	
	private List <Product> GetListProduct() {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		
		String sql = "Select ID,Title,ImageLink,Price,Author from Product";
		List <Product> list = template.query(sql, new ProductHomeMapper());		
		return list;

	}
	@RequestMapping(value = "/Intro")
    public String showIntropage() {
		
        return "Intro";
    }
	@RequestMapping(value = "/Books")
    public String showBookspage(ModelMap modelMap) {
		modelMap.addAttribute("listProduct",GetListProduct());
        return "Books";
    }
}
