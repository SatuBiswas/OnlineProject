package com.satu.controller;

import com.satu.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

    @RequestMapping(value = "/")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/demo1", method = RequestMethod.GET)
    @ResponseBody
    public String demo1() {
        return "Spring MVC";
    }

    @RequestMapping(value = "/demo2/{fullName}", method = RequestMethod.GET)
    @ResponseBody
    public String demo2(@PathVariable("fullName") String fullName) {
        return "Hi ," + fullName;
    }

    @RequestMapping(value = "ss")
    public String ss() {
        return "ss";
    }

    @RequestMapping(value = "saveEmployee", method = RequestMethod.POST)
    public String saveEmployee(@ModelAttribute Employee employee) {
        System.out.println("employee name : "+employee.getFirstName());
        //System.out.println("date : "+employee.getDate());
        return "Hi";
    }
}
