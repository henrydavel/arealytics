package za.co.drinker.config;
/*  @author : henry 2024/03/06 */

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;


import javax.sql.DataSource;

@Profile({"local"})
public class DataSourceConfig {

//    @Bean("awsDatasource")
//    @ConfigurationProperties(prefix = "spring.datasource")
//    public DataSource awsDatasource() {
//        return DataSourceBuilder.create().build();
//    }

//    @Autowired
//    private Environment env;
//    @ConfigurationProperties(prefix = "spring.datasource.aws")
//    public DataSource postgressDatasource() {
//        return DataSourceBuilder.create()
//                .driverClassName(env.getProperty("driver-class-name"))
//                .username(env.getProperty("username"))
//                .password(env.getProperty("password"))
//                .url(env.getProperty("jdbcUrl"))
//                .build();
//    }


    @Bean(name = "awsDatasource")
    @Primary
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource pgDataSource() {
        return DataSourceBuilder.create().build();
    }


}
