package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.OrderProduct;

public class OrderProductMapper implements RowMapper<OrderProduct> {
	public OrderProduct mapRow(ResultSet rs, int rowNum) throws SQLException {
		OrderProduct orderProduct = new OrderProduct();

		orderProduct.setID(rs.getInt("ID"));
		orderProduct.setPrice(rs.getLong("Price"));
		orderProduct.setTitle(rs.getString("Title"));
		return orderProduct;
	}
}