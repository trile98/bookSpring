package com.book.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.book.database.AccountDetailMapper;
import com.book.database.DatabaseJDBC;
import com.book.database.ProductHomeMapper;
import com.book.model.AccountDetail;
import com.book.model.Order;
import com.book.model.Product;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;


@Controller
@SessionAttributes("giohang")
public class CartController{

	
	
//Get info User add to form payment
	@RequestMapping(path = "/payment")
	public String showAccountDetail(ModelMap modelMap) {
		List<AccountDetail> acdt = GetInfoAccount();
		modelMap.addAttribute("acdt", acdt);
		return "payment";
	}
	private List<AccountDetail> GetInfoAccount() {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		String sql = "Select ID, Name, Email, PhoneNumber, HomeAddress from Users Where ID = 2";
		
		List<AccountDetail> a = template.query(sql, new AccountDetailMapper());
		return a;
	}
	
//Update info User
	@RequestMapping(value = "payment/add-payment", method = RequestMethod.POST)
    public String PaymentUpdateAccount(@RequestParam int ID, @RequestParam String Name,
    		@RequestParam String Email, @RequestParam String PhoneNumber, @RequestParam String HomeAddress,ModelMap modelMap, HttpSession session) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		
		String sql = "Update Users Set Name = '"+Name+"', Email = '"+Email+"', PhoneNumber ='"+PhoneNumber+"', HomeAddress = '"+HomeAddress+"'Where ID = "+ID ;
		
		template.execute(sql);
		//remove session when finish payment
		session.removeAttribute("giohang");
		return ("redirect:/");	
    }
	
//Load product into Cart
	
	
	List<Product> giohangs = new ArrayList<Product>();
	
	@RequestMapping(path = "/add-to-cart")
	public String addCartProduct(@RequestParam int ID , ModelMap modelMap, HttpSession httpSession) {	
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		String sql = "Select * from Product where ID="+ID;
		
		List<Product> a = template.query(sql, new ProductHomeMapper());
		giohangs.add(a.get(0));
		httpSession.setAttribute("giohang", giohangs);

		return ("redirect:/");	
	}
	
	@RequestMapping(path = "/Cart-new")
	public String showCart() {
		return "Cart-new";
	}
	
	
}
