package com.aashdit.interview.gyame.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {

    @GetMapping(path = "/employees")
    public String listEmployees(Model model)
    {
            model.addAttribute("module", "employee");

            //TODO fetch list of all employees from DB and display on page
            return "site.employee.list";
    }
}
