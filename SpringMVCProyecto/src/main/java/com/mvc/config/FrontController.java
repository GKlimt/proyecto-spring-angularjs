package com.mvc.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class FrontController extends AbstractAnnotationConfigDispatcherServletInitializer{

	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		System.out.println("\n\nCargada App\n\n");
		return new Class<?>[] { ComponentesNoWeb.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] { ComponentesWeb.class };
	}


	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

}
