package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.OrderDetail;

public class OrderDetailMapper  implements RowMapper<OrderDetail> {
	public OrderDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		OrderDetail orderDetail = new OrderDetail();

		orderDetail.setID(rs.getInt("ID"));
		orderDetail.setOrderId(rs.getInt("OrderId"));
		orderDetail.setProductId(rs.getInt("ProductId"));
		orderDetail.setQuantity(rs.getInt("Quantity"));
		
		return orderDetail;
	}
}