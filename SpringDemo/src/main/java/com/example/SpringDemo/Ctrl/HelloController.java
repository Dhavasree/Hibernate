package com.example.SpringDemo.Ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	
	
		@RequestMapping("/")
	public String helloworld()
	{
		return "index";
	}
	
	@RequestMapping("/submit")
	public String submit()
	{
		return "/final/final";
	}
	
	@RequestMapping(value = "/input/{page}", method = RequestMethod.GET)
    public String inputsHandler(@PathVariable("page") final String page) {
        System.out.println("Pages ");
        
        return "input/" + page;
    }
}
