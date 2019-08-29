package com.kh.yc.category.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryOneSupporter {
	 @RequestMapping(value = "/categoryOneSupporter.ca", method = RequestMethod.GET)
     public String home(Locale locale, Model model) {
     
        
        
        return "main/categoryOneSupporter";
     
}
}
