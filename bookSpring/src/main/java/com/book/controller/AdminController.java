package com.book.controller;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.book.database.AccountMapper;
import com.book.database.DatabaseJDBC;
import com.book.model.Account;
 
@Controller
public class AdminController {
	@RequestMapping(value = "/admin")
    public ModelAndView showLogin() {
        return new ModelAndView("AdminLogin", "command", new Account());
    }
	
	 
	@RequestMapping(value = "/signin", method = { RequestMethod.POST,RequestMethod.GET})
    public String ProcessLogin(@ModelAttribute("SpringWeb")Account acc,ModelMap model) {

		String username= acc.getUsername();
		String password = acc.getPassword();
		
		if((username!=null&& !username.isEmpty())||(password!=null&& !password.isEmpty())) {
			
			int CompareResult = compareAccountWithDB(username, password);
			
			switch(CompareResult) {
				case 1:
					return ("AdminHomepage");
				case 2:
					model.addAttribute("errorMes", "Your account is not admin");
					return ("AdminLoginFail");
				case 3:
					model.addAttribute("errorMes", "Your password is wrong");
					return ("AdminLoginFail");
				case 4:
					model.addAttribute("errorMes", "Your account is not exist");
					return ("AdminLoginFail");
			}
			return ("AdminLoginFail");
		}
		else {
			model.addAttribute("errorMes", "username/password is empty");
			return ("AdminLoginFail");
		}
		
        
    }
	
	private int compareAccountWithDB(String name, String pass) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		
		String sql = "Select Username, Pass, Auth from Users";
		List <Account> accounts = template.query(sql, new AccountMapper());
		
		for(Account acc : accounts) {
			if(acc.getUsername().equals(name)) {
				if(acc.getPassword().equals(pass)) {
					if(acc.getAuth()==1) {
						return 1;
					}
					else {
//						is not admin
						return 2;
					}
				}
				else {
//					wrong password
					return 3;
				}
			}
		}
		
//		account not exist
		return 4;
	}
	
	
}
