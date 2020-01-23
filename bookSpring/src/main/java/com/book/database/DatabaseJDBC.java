package com.book.database;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class DatabaseJDBC {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
   
	public void setDataSource(DataSource ds) {
		this.jdbcTemplateObject = new JdbcTemplate(ds);
	}
	
	public DatabaseJDBC() {
		
		dataSource = new DataSourceConfig().dataSource();
		setDataSource(dataSource);
	}
	
	public JdbcTemplate getTemplate() {
		return jdbcTemplateObject;
	}
}
