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
import com.book.database.DatabaseJDBC;
import com.book.database.OrderDetailMapper;
import com.book.database.OrderMapper;
import com.book.database.OrderProductMapper;
import com.book.model.Account;
import com.book.model.Order;
import com.book.model.OrderDetail;
import com.book.model.OrderProduct;

 
@Controller
public class AdminController {
	private boolean logincheck = false;
	
//	---------------Login
	@RequestMapping(value = "/admin")
    public ModelAndView showLogin() {
        return new ModelAndView("AdminLogin", "command", new Account());
    }
	
	 
	@RequestMapping(value = "/admin/signin", method = { RequestMethod.POST,RequestMethod.GET})
    public String ProcessLogin(@ModelAttribute("SpringWeb")Account acc,ModelMap model) {

		String username= acc.getUsername();
		String password = acc.getPassword();
		
		if((username!=null&& !username.isEmpty())||(password!=null&& !password.isEmpty())) {
			
			int CompareResult = compareAccountWithDB(username, password);
			
			switch(CompareResult) {
				case 1:
					logincheck = true;
					return ("redirect:/admin/home");
				case 2:
					model.addAttribute("errorMes", "Your account is not admin");
					return ("AdminLoginFail");
				case 3:
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
	
	
//	------------Home
	@RequestMapping(value = "/admin/home")
    public String showHome() {
		if(logincheck == true)
			return ("AdminHomepage");
		else
			return("redirect:/admin");
    }
	
	
//	--------------------Order
	@RequestMapping(value = "/admin/order")
    public ModelAndView showOrder() {
		if(logincheck==true) {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Select * from Orders";
			List <Order> orders = template.query(sql, new OrderMapper());
			
			String IDsql = "Select ID from Users";
			List<Integer> IDs =template.query(IDsql,new RowMapper<Integer>(){
											            public Integer mapRow(ResultSet rs, int rowNum) 
											                    throws SQLException {
											return (Integer)rs.getInt("ID");
											}
											});
			
			ModelAndView mv = new ModelAndView("AdminOrderView","command",new Order());
			
			mv.addObject("IdList",IDs);
			mv.addObject("OrderList",orders);
			
	        return mv;
		}
		else {
	        return new ModelAndView("AdminLogin", "command", new Account());
		}
    }
	
	@RequestMapping(value = "/admin/order/addNew")
    public ModelAndView showAddOrder() {
		if(logincheck==true) {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String currentDate = java.time.LocalDate.now().toString();
			
			String sql = "Select ID from Users";
			List<Integer> IDs =template.query(sql,new RowMapper<Integer>(){
											            public Integer mapRow(ResultSet rs, int rowNum) 
											                    throws SQLException {
											return (Integer)rs.getInt("ID");
											}
											});
			
			ModelAndView mv = new ModelAndView("AdminOrderAddNew","command",new Order());
			mv.addObject("curDate", currentDate);
			mv.addObject("IdList",IDs);
			
	        return mv;
		}
		else {
			return new ModelAndView("AdminLogin", "command", new Account());
		}
    }
	
	@RequestMapping(value = "/admin/order/submit-new", method = { RequestMethod.POST,RequestMethod.GET})
    public String ProcessNewOrder(@ModelAttribute("SpringWeb")Order order,ModelMap model) {
		if(logincheck == true) {
			int UserId= order.getUserID();
			Date CreateDate = order.getCreateDate();
			
			
			
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Insert into Orders values ("+UserId+",'"+CreateDate.toString()+"',0)";
			template.execute(sql);
			
			
			
			return ("redirect:/admin/order");
		}
		else
			return("redirect:/admin");
        
    }
	
	@RequestMapping(value = "/admin/order/delete/{orderId}", method = { RequestMethod.POST,RequestMethod.GET})
    public String DeleteOrder(@PathVariable(value="orderId") String orderId, ModelMap model) {
		if(logincheck==true) {
			try {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Delete from Orders where ID ="+orderId;
			template.execute(sql);
			
			model.addAttribute("ResultOrderMes", "Deleted Successfully");
			return ("redirect:/admin/order");
			}
			catch(Exception e) {
				model.addAttribute("ResultOrderMes", "Fail to delete. Error: "+e.getMessage());
				return ("redirect:/admin/order");
			}
		}
		else
			return("redirect:/admin");
    }
	
	@RequestMapping(value = "/admin/order/edit/{orderId}", method = { RequestMethod.POST,RequestMethod.GET})
    public String EditOrder(@PathVariable(value="orderId") String orderId, @ModelAttribute("SpringWeb")Order order,ModelMap model) {
		if(logincheck==true) {
			try {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Update Orders set UserId = "+ order.getUserID() +", Total = "+order.getTotal()+"where ID ="+orderId;
			template.execute(sql);
			
			model.addAttribute("ResultOrderMes", "Deleted Successfully");
			return ("redirect:/admin/order");
			}
			catch(Exception e) {
				model.addAttribute("ResultOrderMes", "Fail to delete. Error: "+e.getMessage());
				return ("redirect:/admin/order");
			}
		}
		else
			return("redirect:/admin");
    }
	
	
//	-------------------Orderdetail
	@RequestMapping(value = "/admin/order-detail")
    public ModelAndView showOrderDetail() {
		if(logincheck==true) {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Select * from OrderDetail";
			List <OrderDetail> ordersDetail = template.query(sql, new OrderDetailMapper());
			
			String sqlProduct = "Select ID, Title, Price from Product";
			List<OrderProduct> orderP =template.query(sqlProduct,new OrderProductMapper());
			
			String sqlID = "Select ID from Orders";
			List<Integer> IDs =template.query(sqlID,new RowMapper<Integer>(){
											            public Integer mapRow(ResultSet rs, int rowNum) 
											                    throws SQLException {
											return (Integer)rs.getInt("ID");
											}
											});
			
			ModelAndView mv = new ModelAndView("AdminOrderDetail","command",new OrderDetail());
			mv.addObject("OrderProductList", orderP);
			mv.addObject("OrderIdList",IDs);
			mv.addObject("OrderDetailList",ordersDetail);
			
	        return mv;
		}
		else
			return new ModelAndView("AdminLogin", "command", new Account());
    }
	
	@RequestMapping(value = "/admin/order-detail/addNew")
    public ModelAndView showAddOrderDetail() {
		if(logincheck==true) {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Select ID, Title, Price from Product";
			List<OrderProduct> orderP =template.query(sql,new OrderProductMapper());
			
			String sqlID = "Select ID from Orders";
			List<Integer> IDs =template.query(sqlID,new RowMapper<Integer>(){
											            public Integer mapRow(ResultSet rs, int rowNum) 
											                    throws SQLException {
											return (Integer)rs.getInt("ID");
											}
											});
			
			ModelAndView mv = new ModelAndView("AdminOrderDetailAddNew","command",new OrderDetail());
			mv.addObject("OrderProductList", orderP);
			mv.addObject("OrderIdList",IDs);
			
	        return mv;
		}
		else
	        return new ModelAndView("AdminLogin", "command", new Account());
    }
	
	@RequestMapping(value = "/admin/order-detail/submit-new", method = { RequestMethod.POST,RequestMethod.GET})
    public String ProcessNewOrderDetail(@ModelAttribute("SpringWeb")OrderDetail orderDetail,ModelMap model) {
		if(logincheck==true) {
			int OrderId = orderDetail.getOrderId();
			int ProductId = orderDetail.getProductId();
			int Quantity = orderDetail.getQuantity();
			
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Insert into OrderDetail values ("+OrderId+","+ProductId+","+Quantity+")";
			template.execute(sql);
			
			
			
			return ("redirect:/admin/order-detail");
		}
		else {
			return("redirect:/admin");
		}
        
    }
	
	@RequestMapping(value = "/admin/order-detail/edit/{orderDetailId}", method = { RequestMethod.POST,RequestMethod.GET})
    public String EditOrderDetail(@PathVariable(value="orderDetailId") String orderDetailId, @ModelAttribute("SpringWeb")OrderDetail orderDetail,ModelMap model) {
		if(logincheck==true) {
			try {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Update OrderDetail set OrderId = "+ orderDetail.getOrderId() +", ProductId = "+orderDetail.getProductId() +", Quantity = "+orderDetail.getQuantity()+"where ID ="+orderDetailId;
			template.execute(sql);
			
			model.addAttribute("ResultOrderMes", "Deleted Successfully");
			return ("redirect:/admin/order-detail");
			}
			catch(Exception e) {
				model.addAttribute("ResultOrderMes", "Fail to delete. Error: "+e.getMessage());
				return ("redirect:/admin/order-detail");
			}
		}
		else
			return("redirect:/admin");
    }
	
	@RequestMapping(value = "/admin/order-detail/delete/{orderDetailId}", method = { RequestMethod.POST,RequestMethod.GET})
    public String DeleteOrderDetail(@PathVariable(value="orderDetailId") String orderDetailId, ModelMap model) {
		if(logincheck==true) {
			try {
			DatabaseJDBC jdbc = new DatabaseJDBC();
			JdbcTemplate template = jdbc.getTemplate();
			
			String sql = "Delete from OrderDetail where ID ="+orderDetailId;
			template.execute(sql);
			
			model.addAttribute("ResultOrderMes", "Deleted Successfully");
			return ("redirect:/admin/order-detail");
			}
			catch(Exception e) {
				model.addAttribute("ResultOrderMes", "Fail to delete. Error: "+e.getMessage());
				return ("redirect:/admin/order-detail");
			}
		}
		else
			return("redirect:/admin");
    }
	
	
	
	private int compareAccountWithDB(String name, String pass) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();
		
		String sql = "Select Auth from Users where Username = '"+name+"' and Pass = '"+pass+"'";
		List <Integer> Auths = template.query(sql, new RowMapper<Integer>(){
												            public Integer mapRow(ResultSet rs, int rowNum) 
												                    throws SQLException {
												return (Integer)rs.getInt("Auth");
												}
												});
		
		if(Auths.isEmpty()) {
			//account not exist
			return 3;
		}
		
		else {
			if(Auths.get(0)==1)
				return 1;
			else{
//				is not admin
				return 2;
			}
				
		}
	}
	
	
}
