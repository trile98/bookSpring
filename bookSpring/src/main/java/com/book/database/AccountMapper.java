package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.Account;

public class AccountMapper  implements RowMapper<Account> {
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account acc = new Account();
		
		acc.setUsername(rs.getString("Username"));
		acc.setPassword(rs.getString("Pass"));
		acc.setAuth(rs.getInt("Auth"));
		return acc;
	}
}
