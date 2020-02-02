package com.book.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.book.model.Product;
import com.book.model.productCart;

@Controller
@RequestMapping("/api")
@SessionAttributes({"user","giohang"})
public class ApiController {
	List<productCart> gioHangs=new ArrayList<productCart>();
	
	@GetMapping("ThemGioHang")
	public void ThemGioHang(@ModelAttribute productCart product,HttpSession httpSession)
	{
		gioHangs.add(product);
		httpSession.setAttribute("giohang", gioHangs);
		List<Product> listgh=(List<Product>) httpSession.getAttribute("product");
		System.out.println(gioHangs.size()+"-"+listgh.size());
	}
	
}
