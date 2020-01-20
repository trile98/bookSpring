package com.book.database;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;



public class DatabaseJDBC {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
   
	public void setDataSource(DataSource ds) {
		this.jdbcTemplateObject = new JdbcTemplate(ds);
	}
	
	public DatabaseJDBC() {
		ApplicationContext context = new ClassPathXmlApplicationContext("/bookSpring/src/main/webapp/WEB-INF/beans.xml");
		
		dataSource = (DataSource) context.getBean("datasource");
		setDataSource(dataSource);
	}
	
	public JdbcTemplate getTemplate() {
		return jdbcTemplateObject;
	}
}
