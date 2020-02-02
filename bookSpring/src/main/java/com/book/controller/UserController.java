package com.book.controller;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.book.database.AccountMapper;
import com.book.database.AccountMapperFull;
import com.book.database.DatabaseJDBC;
import com.book.database.OrderDetailMapper;
import com.book.database.OrderMapper;
import com.book.database.OrderProductMapper;
import com.book.model.Account;
import com.book.model.Order;
import com.book.model.OrderDetail;
import com.book.model.OrderProduct;

@Controller
public class UserController {
	@RequestMapping(value = "/user/signin")
	public ModelAndView showLogin() {
		return new ModelAndView("UserLogin", "command", new Account());
	}

	@RequestMapping(value = "/user/signup")
	public ModelAndView showSignup() {
		return new ModelAndView("UserSignup", "command", new Account());
	}

	@RequestMapping(value = "/user/signin/error", method = { RequestMethod.POST,RequestMethod.GET})
	public String ProcessLogin(@ModelAttribute("SpringWeb")Account acc,ModelMap model) {

		String username= acc.getUsername();
		String password = acc.getPassword();

		if((username!=null&& !username.isEmpty())&&(password!=null&& !password.isEmpty())) {

			int CompareResult = compareAccountWithDBSignIn(username, password);

			switch(CompareResult) {
			case 1:
				return ("redirect:/user/home");
			case 2:
				model.addAttribute("errorMes", "Incorrect account type!");
				return ("UserLoginFail");
			case 3:
				model.addAttribute("errorMes", "Incorrect Username/Password!");
				return ("UserLoginFail");
			case 4:
				model.addAttribute("errorMes", "Incorrect Username/Password!");
				return ("UserLoginFail");
			}
			return ("UserLoginFail");
		}
		else {
			model.addAttribute("errorMes", "Empty Username/Password!");
			return ("UserLoginFail");
		}
	}


	@RequestMapping(value = "/user/signup/error", method = { RequestMethod.POST,RequestMethod.GET})
	public String ProcessSignup(@ModelAttribute("SpringWeb")Account acc,ModelMap model) {

		String username= acc.getUsername();
		String password = acc.getPassword();
		String name = acc.getName();
		String homeAddress = acc.getHomeAddress();
		String email = acc.getEmail();
		String phoneNumber = acc.getPhoneNumber();

		if((username!=null&& !username.isEmpty())&&(password!=null&& !password.isEmpty())
				&&(name!=null&& !name.isEmpty())&&(homeAddress!=null&& !homeAddress.isEmpty())
				&&(email!=null&& !email.isEmpty())&&(phoneNumber!=null&& !phoneNumber.isEmpty())) {

			int CompareResult = compareAccountWithDBSignUp(username, password);

			switch(CompareResult) {
			case 1:
			{
				/*DatabaseJDBC jdbc = new DatabaseJDBC();
				JdbcTemplate template = jdbc.getTemplate();
				
				String sql = "Insert into Users values ("+name+", "+homeAddress+", "+email+", "+phoneNumber+", "+username+", "+password+", 2)";
				template.execute(sql);*/
				
				return ("redirect:/user/home");}
				
			case 2:
				model.addAttribute("errorMes", "Email already used!");
				return ("UserSignupFail");
			case 3:
				model.addAttribute("errorMes", "Username already used!");
				return ("UserSignupFail");
			}
			return ("UserSignupFail");
		}
		else {
			model.addAttribute("errorMes", "There are empty field(s)!");
			return ("UserSignupFail");
		}
	}


	@RequestMapping(value = "/user/home")
	public String showHome() {
		return ("UserHomepage");
	}


	private int compareAccountWithDBSignIn(String name, String pass) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select Username, Pass, Auth from Users";
		List <Account> accounts = template.query(sql, new AccountMapper());

		for(Account acc : accounts) {
			if(acc.getUsername().equals(name)) {
				if(acc.getPassword().equals(pass)) {
					if(acc.getAuth()==2) {
						return 1;
					}
					//is not user
					else return 2;
				}
				//wrong password
				else return 3;
			}
		}

		return 4;
	}


	private int compareAccountWithDBSignUp(String username, String email) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select Username, Pass, Name, HomeAddress, Email, PhoneNumber, Auth from Users";
		List <Account> accounts = template.query(sql, new AccountMapperFull());

		for(Account acc : accounts) {
			if(!acc.getUsername().equals(username)){
				if(!acc.getEmail().equals(email)){
					return 1;
				}
				//same email
				else return 2;
			}
			//same username
			else return 3;
		}
		return 3;
	}

}


