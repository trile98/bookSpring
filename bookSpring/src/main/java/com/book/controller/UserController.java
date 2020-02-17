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
import org.springframework.web.bind.annotation.SessionAttributes;
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
@SessionAttributes("user")
public class UserController {
	private boolean signinCheck = false;
	String user;
	@RequestMapping(value = "/user/signin")
	public ModelAndView showLogin(ModelMap model) {

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
				signinCheck = true;
				model.addAttribute("user",user);
				return ("redirect:/Home/1");
			case 2:
				model.addAttribute("errorMes", "Incorrect Authority!");
				return ("UserLoginFail");
			case 3:
				model.addAttribute("errorMes", "Your account does not exist!");
				return ("UserLoginFail");
			}
			model.addAttribute("errorMes", "Incorrect Username/Password!");
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
				DatabaseJDBC jdbc = new DatabaseJDBC();
				JdbcTemplate template = jdbc.getTemplate();

				String sql = "Insert into Users values ('"+name+"', '"+homeAddress+"', '"+email+"', '"+phoneNumber+"', '"+username+"', '"+password+"', 2)";
				template.execute(sql);

				return ("redirect:/user/signin");}

			case 2:
				model.addAttribute("errorMes", "Username/Email already used!");
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


	private int compareAccountWithDBSignIn(String username, String password) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select Auth from Users where Username = '"+username+"' and Pass = '"+password+"'";
		List <Integer> Auths = template.query(sql, new RowMapper<Integer>(){
			public Integer mapRow(ResultSet rs, int rowNum) 
					throws SQLException {
				return (Integer)rs.getInt("Auth");
			}
		});

		if(Auths.isEmpty()) {
			//account does not exist
			return 3;
		}

		else {
			if(Auths.get(0)==2)
				//sign in success
				return 1;
			else{
				//account is not User
				return 2;
			}

		}
	}


	private int compareAccountWithDBSignUp(String username, String email) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select Auth from Users where Username = '"+username+"' or Email = '"+email+"'";
		List <Integer> Auths = template.query(sql, new RowMapper<Integer>(){
			public Integer mapRow(ResultSet rs, int rowNum) 
					throws SQLException {
				return (Integer)rs.getInt("Auth");
			}
		});

		if(Auths.isEmpty()) {
			//sign up success
			return 1;
		}

		else
			//sign up fail
			return 2;
	}

}


