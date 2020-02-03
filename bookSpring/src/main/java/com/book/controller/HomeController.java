package com.book.controller;

import java.util.List;
import java.util.Locale;

import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.context.annotation.Conditional;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.book.database.AccountMapper;
import com.book.database.DatabaseJDBC;
import com.book.database.ProductHomeMapper;
import com.book.model.Account;
import com.book.model.Product;

@Controller
public class HomeController {

	@RequestMapping(path = "/")
	public String showHomepage(ModelMap modelMap) {
		List<Product> list = GetListProduct();
		int tongsopage = list.size() / 10;
		modelMap.addAttribute("listProduct", list);
		modelMap.addAttribute("page", tongsopage);
		return "index";
	}
	@RequestMapping(path = "/Home/{trang}",method = RequestMethod.GET)
	public String showHomepagenum(@PathVariable("trang")int trang,ModelMap modelMap) {
		List<Product> list = GetListProduct();
		int tongsopage = list.size() / 10;
		modelMap.addAttribute("trang",trang);
		modelMap.addAttribute("listProduct", list);
		modelMap.addAttribute("page", tongsopage);
		return "Home";
	}
	

	@RequestMapping(path = "/Intro")
	public String showIntropage() {

		return "Intro";
	}

	@RequestMapping(path = "/Books/{trang}")
	public String showBookspage(@PathVariable("trang")int trang,ModelMap modelMap) {
		List<Product> list = GetListProduct();
		int tongsopage = list.size() / 10;
		modelMap.addAttribute("trang",trang);
		modelMap.addAttribute("listProduct", list);
		modelMap.addAttribute("page", tongsopage);
		return "Books";
	}
	@RequestMapping(path = "/NewBooks/{trang}")
	public String showNewBookspage(@PathVariable("trang")int trang,ModelMap modelMap) {
		List<Product> list = GetListProduct();
		int tongsopage = list.size() / 10;
		modelMap.addAttribute("trang",trang);
		modelMap.addAttribute("listProduct", list);
		modelMap.addAttribute("page", tongsopage);
		return "NewBooks";
	}

	@RequestMapping(path = "/Contact")
	public String showContactspage() {
		return "Contact";
	}

	@RequestMapping(path = "/Detail", method = { RequestMethod.POST,RequestMethod.GET})
	public String showProductDetail(@RequestParam ("id") int id, ModelMap modelMap) {
		
		try {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Select * from Product where id="+id;
			List<Product> product = template.query(sql, new ProductHomeMapper());
			
//			String sqlAuthor = "Select * from product where Author like '% "+ author + " %' ";
//			List<Product> list = template.query(sql, new ProductHomeMapper());
//			
			modelMap.addAttribute("Product", product);
//			modelMap.addAttribute("listProduct", list);
			modelMap.addAttribute("ResultProductDetailMes","Successfull");

			return ("BookDetail");
		}
		catch(Exception e) {
			modelMap.addAttribute("ResultProductDetailMes", "Fail to show book info. Error: "+e.getMessage());
			return ("BookDetail");
		}

	}
	
	@RequestMapping(path = "/Order", method = { RequestMethod.POST,RequestMethod.GET})
	public String showOrderPage(@RequestParam ("id") int id, @RequestParam ("author") String author, ModelMap modelMap) {
		
		try {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Select * from Product where id="+id;
			List<Product> list = template.query(sql, new ProductHomeMapper());
			
			modelMap.addAttribute("Product", list);
			modelMap.addAttribute("ResultOrderMes","Successfull");
			return ("Order");
		}
		catch(Exception e) {
			modelMap.addAttribute("ResultOrderMes", "Fail to show order info. Error: "+e.getMessage());
			return ("Order");
		}

	}
	private List<Product> GetListProduct() {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select * from Product";
		List<Product> list = template.query(sql, new ProductHomeMapper());
		return list;

	}
	
}
