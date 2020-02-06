package com.book.controller;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.book.database.AccountDetailMapper;
import com.book.database.CartMapper;
import com.book.database.DatabaseJDBC;
import com.book.database.ProductHomeMapper;
import com.book.model.AccountDetail;
import com.book.model.Order;
import com.book.model.Product;
import com.book.model.productCart;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;


@Controller
@SessionAttributes({"giohang","user"})
public class CartController{

	List<Product> giohangs = new ArrayList<Product>();
	
//Get info User add to form payment
	@RequestMapping(path = "/payment")
	public String showAccountDetail(ModelMap modelMap, @SessionAttribute("user") String user) {
		List<AccountDetail> acdt = GetInfoAccount(user);
		modelMap.addAttribute("acdt", acdt);
		return "payment";
	}
	private List<AccountDetail> GetInfoAccount(String user) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		
		String sql = "Select ID, Name, Email, PhoneNumber, HomeAddress from Users Where Username ='"+user+"'";
		
		List<AccountDetail> a = template.query(sql, new AccountDetailMapper());
		return a;
	}
	
//Update info User and create order
	@RequestMapping(value = "payment/add-payment", method = RequestMethod.POST)
    public String PaymentUpdateAccount(@SessionAttribute("user") String user, @SessionAttribute("giohang") List<Product> listproduct,@RequestParam int ID, @RequestParam String Name,
    		@RequestParam String Email, @RequestParam String PhoneNumber, @RequestParam String HomeAddress,ModelMap modelMap, HttpSession session, SessionStatus status,HttpServletRequest request) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		
		String sql = "Update Users Set Name = '"+Name+"', Email = '"+Email+"', PhoneNumber ='"+PhoneNumber+"', HomeAddress = '"+HomeAddress+"'Where Username = '"+user+"'" ;
		
		/* String sql2 = "Insert into Orders values ("+ID+",'1/1/2020',"+total+")"; */
		 
		template.execute(sql);
		
		
		
		String sql3 = "Select top 1 ID from Orders Order by ID DESC";
		
		List<Integer> IDs =template.query(sql3,new RowMapper<Integer>(){
            public Integer mapRow(ResultSet rs, int rowNum) 
                    throws SQLException {
								return (Integer)rs.getInt("ID");
								}
								});
		
		int subtotal = 0;
		int ship = 15000;
		for(int i=0;i<listproduct.size();i++) {
			String sql4 = "Insert into OrderDetail values ("+IDs.get(0)+","+listproduct.get(i).getID()+","+listproduct.get(i).getCount()+")";
			template.execute(sql4);
			subtotal = subtotal + (listproduct.get(i).getCount() * listproduct.get(i).getPrice());
		}
		
		
		long total = (long) (ship + subtotal);
		
		String sql2 = "Insert into Orders values ("+ID+", GETDATE(),"+total+")"; 
		template.execute(sql2);
		
		
		//remove session when finish payment
		giohangs = new ArrayList<Product>();
		session.setAttribute("giohang", giohangs);
		
		session.removeAttribute("giohang");
		
		return ("redirect:/");	
    }

	
	
	
//Delete row product in cart
	@RequestMapping(path = "/delete-row-cart")
	public String deleteRowCart(@RequestParam int deleteID, @SessionAttribute("giohang") List<Product> listproduct ,HttpSession httpSession) {
		for(int i=0;i<listproduct.size();i++) {
			if(listproduct.get(i).getID() == deleteID)
			{
				listproduct.remove(i);
			}
		}
		httpSession.setAttribute("giohang", giohangs);
		
		return "redirect:/Cart-new";
	}
	
//add product into cart	
	
	
	@RequestMapping(path = "/add-to-cart")
	public String addCartProduct(@RequestParam int ID , ModelMap modelMap, HttpSession httpSession,HttpServletRequest request) {	
		
		if(httpSession.getAttribute("giohang") == null){
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			String sql = "Select * from Product where ID="+ID;		
			List<Product> a = template.query(sql, new CartMapper());		
			giohangs.add(a.get(0));
			httpSession.setAttribute("giohang", giohangs);
		}
		else{
			int vitri = KiemTraTonTai(ID, httpSession);
			if(vitri ==-1){
				List<Product> list = (List<Product>) httpSession.getAttribute("giohang");
				DatabaseJDBC jdbc = new DatabaseJDBC();
				JdbcTemplate template = jdbc.getTemplate();
				String sql = "Select * from Product where ID="+ID;		
				List<Product> a = template.query(sql, new CartMapper());		
				list.add(a.get(0));
			}
			else {
				List<Product> list = (List<Product>) httpSession.getAttribute("giohang");
				int soluongmoi = list.get(vitri).getCount() + 1;
				list.get(vitri).setCount(soluongmoi);
			}
		}
		
		return ("redirect:/");	
	}
	
	private int KiemTraTonTai(int ID, HttpSession httpSession)
	{
		List<Product> list = (List<Product>) httpSession.getAttribute("giohang");
		for(int i=0; i<list.size();i++)
		{
			if(list.get(i).getID() == ID)
				return i;
		}
		return -1;
		
	}

	
	
	@RequestMapping(path = "/Cart-new")
	public String showCart() {
		return "Cart-new";
	}
	
	
}
