package space.earth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.resource.PathResourceResolver;

@SpringBootApplication
@ComponentScan("space.earth")
@EnableAutoConfiguration
public class InfinityBankApplication {

	public static void main(String[] args) {
		SpringApplication.run(InfinityBankApplication.class, args);
	}
		


}
