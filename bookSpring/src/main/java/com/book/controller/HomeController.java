package com.book.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.context.annotation.Conditional;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.book.database.AccountMapper;
import com.book.database.DatabaseJDBC;
import com.book.database.ProductHomeMapper;
import com.book.database.TopProductSalesMapper;
import com.book.model.Account;
import com.book.model.Product;
import com.book.model.User;

@Controller
@SessionAttributes("user")
public class HomeController {

	@RequestMapping(path = "/")
	public String showHomepage(ModelMap modelMap) {
		List<Product> list = GetListTopProduct(10);
		int tongsopage ;
		if(list.size() % 10<5&&list.size() % 10!=0) {
			tongsopage = (list.size() / 10)+1;
		}
		else {tongsopage = list.size() / 10;}
		
		
		modelMap.addAttribute("listProduct", list);
		modelMap.addAttribute("page", tongsopage);
		return "index";
	}
	
	@RequestMapping(path = "/Home/{trang}",method = RequestMethod.GET)
	public String showHomepagenum(@PathVariable("trang")int trang,ModelMap modelMap) {
		List<Product> list = GetListTopProduct(10);
		int tongsopage ;
		if(list.size() % 10<5&&list.size() % 10!=0) {
			tongsopage = (list.size() / 10)+1;
		}
		else {tongsopage = list.size() / 10;}
		
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
	public String showBookspage(@PathVariable("trang")int trang,@RequestParam("Search")String Search,ModelMap modelMap) {
		
		try {
			String Search1 = new String(Search.getBytes("UTF-8"), "ISO-8859-1");
			String val = new String(Search.getBytes("iso-8859-1"));
			List<Product> list = GetListSearchProduct(val);
			int tongsopage;
			if(list.size() % 10<5&&list.size() % 10!=0) {
				tongsopage = (list.size() / 10)+1;
			}
			else {tongsopage = list.size() / 10;}
			
			if(list.isEmpty()) {//search empty product
				modelMap.addAttribute("access","No");
			}
			else {modelMap.addAttribute("access","Yes");}
			modelMap.addAttribute("Search",val);
			modelMap.addAttribute("trang",trang);
			modelMap.addAttribute("listProduct", list);
			modelMap.addAttribute("page", tongsopage);
			
		} catch (Exception e) {
		 System.out.println("Loi");
		}
		return "Books";
		
	}
	@RequestMapping(path = "/NewBooks/{trang}")
	public String showNewBookspage(@PathVariable("trang")int trang,ModelMap modelMap) {
		List<Product> list = GetListNewProduct(100);
		int tongsopage ;
		
		if(list.size() % 10<5&&list.size() % 10!=0) {
			tongsopage = (list.size() / 10)+1;
		}
		else {tongsopage = list.size() / 10;}
		
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

			return ("Detail");
		}
		catch(Exception e) {
			modelMap.addAttribute("ResultProductDetailMes", "Fail to show book info. Error: "+e.getMessage());
			return ("Detail");
		}

	}

	
	@RequestMapping(path = "/Order", method = RequestMethod.POST)
	public String showOrderpage(@RequestParam int ID, ModelMap modelMap) {
		modelMap.addAttribute("ID", ID);

		return "Order";
	}
	private List<Product> GetListProduct() {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "Select * from Product";
		List<Product> list = template.query(sql, new ProductHomeMapper());
		return list;

	}
	private List<Product> GetListTopProduct(int top) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "  select top "+top+" p.*,sum(Quantity) count "
				+ "from Product p,OrderDetail o "
				+ "where p.ID=o.ProductId "
				+ "group by p.ID,p.Title,p.Author,p.ImageLink,p.Price,p.PublishDate,p.Cover,p.Manufacturer,p.Publisher,p.Introduction,p.SKU "
				+ "order by count desc";
		List<Product> list = template.query(sql, new TopProductSalesMapper());
		return list;

	}
	private List<Product> GetListNewProduct(int newP) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "select top "+newP+" p.* from Product p order by p.PublishDate desc,p.ID desc ";
		List<Product> list = template.query(sql, new ProductHomeMapper());
		return list;

	}
	private List<Product> GetListSearchProduct(String search) {
		DatabaseJDBC jdbc = new DatabaseJDBC();
		JdbcTemplate template = jdbc.getTemplate();

		String sql = "select  p.* from Product p "
				+ "where p.Title like '%"+search+"%' or Cover like '%"+search+"%' "
				+ "or Manufacturer like '%"+search+"%' or Publisher like '%"+search+"%'"
				+ "or Author like '%"+search+"%'";
		List<Product> list = template.query(sql, new ProductHomeMapper());
		return list;

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
	

}
