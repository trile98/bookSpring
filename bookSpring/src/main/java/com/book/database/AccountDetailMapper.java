package com.book.database;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.book.model.AccountDetail;

public class AccountDetailMapper  implements RowMapper<AccountDetail> {
	public AccountDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		AccountDetail acc = new AccountDetail();
		
		acc.setID(rs.getInt("ID"));
		acc.setName(rs.getString("Name"));
		acc.setEmail(rs.getString("Email"));
		acc.setPhoneNumber(rs.getString("PhoneNumber"));
		acc.setHomeAddress(rs.getString("HomeAddress"));
		return acc;
	}
}
