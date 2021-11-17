package com.callor.jc.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class MybatisConfig {

    // data source
    public DataSource getDataSource(){
        DataSource ds = new BasicDataSource();

        return ds;
    }

    // SqlSessionFactory

    // SqlSessionTemplate
}
