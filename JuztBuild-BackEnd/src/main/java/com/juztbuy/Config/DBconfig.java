package com.juztbuy.Config;

import javax.sql.DataSource;
import java.util.Properties;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;




@Configuration
@ComponentScan(basePackages="com.juztbuy")
@EnableTransactionManagement
public class DBconfig {
	@Bean(name="dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/juzt");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}
	public Properties getProperties() {
		Properties properties = new Properties();
        properties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
        properties.setProperty("hibernate.show_sql", "true");
        properties.setProperty("hibernate.hbm2ddl.auto", "update");

        return properties;
	}
	@Bean(name="sessionFactory")
	@Autowired
	public LocalSessionFactoryBean sessionFactory(DataSource dataSource) {
		LocalSessionFactoryBean sessionFactory=new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
		sessionFactory.setHibernateProperties(getProperties());
		sessionFactory.setPackagesToScan("com.juztbuy.Model");
		return sessionFactory;
	}
    @Bean(name="transactionManager")
	@Autowired
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager= new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
		return transactionManager;
	}

}