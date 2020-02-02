package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.Account;

public class AccountMapperFull  implements RowMapper<Account> {
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account acc = new Account();
		
		acc.setUsername(rs.getString("Username"));
		acc.setPassword(rs.getString("Pass"));
		acc.setAuth(rs.getInt("Auth"));
		acc.setName(rs.getString("Name"));
		acc.setHomeAddress(rs.getString("HomeAddress"));
		acc.setEmail(rs.getString("Email"));
		acc.setPhoneNumber(rs.getString("PhoneNumber"));
		return acc;
	}
}
