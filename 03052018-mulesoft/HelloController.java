package com.capgemini.helloworldapp;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1/")
public class HelloController{
		@RequestMapping(value="hello",
			method = RequestMethod.GET
		)
		public String sayHello(){
			return "Hello, sONIYA!";
		}
	
}