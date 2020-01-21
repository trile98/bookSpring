package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.Order;

public class OrderMapper implements RowMapper<Order> {
	public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
		Order order = new Order();

		order.setID(rs.getInt("ID"));
		order.setUserID(rs.getInt("UserId"));
		order.setCreateDate(rs.getDate("CreateDate"));
		order.setTotal(rs.getLong("Total"));
		
		return order;
	}
}
