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

	@RequestMapping(path = "/Home")
	public String showHomepage(ModelMap modelMap) {
		List<Product> list = GetListProduct();
		int tongsopage = list.size() / 10;
		modelMap.addAttribute("listProduct", list);
		modelMap.addAttribute("page", tongsopage);
		return "Home";
	}

	private List<Product> GetListProduct() {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select * from Product";
		List<Product> list = template.query(sql, new ProductHomeMapper());
		return list;

	}

	@RequestMapping(path = "/Intro")
	public String showIntropage() {

		return "Intro";
	}

	@RequestMapping(path = "/Books")
	public String showBookspage(ModelMap modelMap) {
		List<Product> list = GetListProduct();
		int tongsopage = (list.size() - 1) / 10;
		modelMap.addAttribute("listProduct", list);
		if (tongsopage % 10 == 0) {
			modelMap.addAttribute("page", tongsopage);
		} else {
			modelMap.addAttribute("page", tongsopage + 1);
		}

		return "Books";
	}

	@RequestMapping(path = "/Contact")
	public String showContactspage() {
		return "Contact";
	}

	@RequestMapping(path = "/Detail", method = RequestMethod.POST)
	public String showDetailpage(@RequestParam int ID, ModelMap modelMap) {
		modelMap.addAttribute("ID", ID);

		// modelMap.addAttribute("Product",GetInfoProduct()); thêm product nhằm lấy
		// thông tin trong trang Detail
		return "Detail";
	}

	private Product GetInfoProduct() {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		Product p = new Product();
		// String sql = "Select ID,Title,ImageLink,Price,Author from Product"; để câu
		// select
		// List <Product> list = template.query(sql, new ProductHomeMapper()); tạo
		// mapper tương ứng

		return p;

	}
	@RequestMapping(path = "/Order", method = RequestMethod.POST)
	public String showOrderpage(@RequestParam int ID, ModelMap modelMap) {
		modelMap.addAttribute("ID", ID);

		return "Order";
	}
}
