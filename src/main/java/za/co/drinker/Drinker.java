package za.co.drinker;
/*  @author : henry 2024/03/06 */

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
//import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
public class Drinker  {

    public static void main(String[] args) {
        SpringApplication.run(Drinker.class, args);
    }
}
