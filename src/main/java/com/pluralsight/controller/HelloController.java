package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController
{
    @RequestMapping(value = "/greeting") //Ties it to the url
    public String sayHello(Model model)
    {
        model.addAttribute("greeting", "Hello World"); //Model is just a basic HashMap, key is greeting, value is hello world

        return "hello"; //refers to i.e. calls hello.jsp. ViewResolver in our servlet-config looks for a jsp file with this name
    }
}
