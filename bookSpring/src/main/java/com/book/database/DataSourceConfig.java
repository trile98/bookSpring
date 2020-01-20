package com.book.database;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DataSourceConfig {
	@Bean
    public DataSource dataSource(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        dataSource.setUrl("jdbc:sqlserver://den1.mssql8.gear.host:1433;databaseName=booksdbs;");
        dataSource.setUsername("booksdbs");
        dataSource.setPassword("Qp2e?P~2h6SV");
        return dataSource;
    }
}
