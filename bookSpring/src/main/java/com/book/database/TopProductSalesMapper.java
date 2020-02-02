package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.Product;

public class TopProductSalesMapper implements RowMapper<Product>{

	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product p = new Product();

		p.setID(rs.getInt("ID"));
		p.setTitle(rs.getString("Title"));
		p.setImageLink(rs.getString("ImageLink"));
		p.setPrice(rs.getInt("Price"));
		p.setCount(rs.getInt("count"));
		p.setAuthor(rs.getString("Author"));
		
		p.setPublishDate(rs.getString("PublishDate"));
		p.setCover(rs.getString("Cover"));
		p.setManufacturer(rs.getString("Manufacturer"));
		p.setPublisher(rs.getString("Publisher"));
		p.setIntroduction(rs.getString("Introduction"));
		p.setSKU(rs.getString("SKU"));
		return p;
	}

}
