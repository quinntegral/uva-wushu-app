package wushugroup.wushuapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.boot.autoconfigure.domain.EntityScan;



@SpringBootApplication
@ComponentScan(basePackages = "wushugroup.wushuapp") // Scan for components in your package
@EnableJpaRepositories(basePackages = "wushugroup.wushuapp.repository") // Specify the repository package
@EntityScan(basePackages = "wushugroup.wushuapp.entity") // Specify the entity package
public class WushuappApplication {

	public static void main(String[] args) {
		SpringApplication.run(WushuappApplication.class, args);
	}

}
