package sn.l3l2i.gestionEnseignants.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

	private static final Logger logger = LoggerFactory.getLogger(WebConfig.class);

	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**") // Autorise toutes les routes
				.allowedOrigins("http://localhost:3000", "http://31.220.20.148:8191") // Origine autorisée (modifiez si nécessaire)
				.allowedMethods("GET", "POST", "PUT", "DELETE", "PATCH", "OPTIONS") // Méthodes autorisées
				.allowedHeaders("*") // Tous les headers autorisés
				.allowCredentials(false); // Changez en true si les cookies ou sessions sont nécessaires
		logger.info("Configuration CORS terminée.");
	}



}
