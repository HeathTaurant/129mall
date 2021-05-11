package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.MainController;
import main.test;
import survey.SurveyController;

@Configuration
public class ControllerConfig {	
	@Bean
	public SurveyController surveyController() {
		return new SurveyController();
	}
	
	@Bean
	public MainController mainController() {
		return new MainController();
	}

}
