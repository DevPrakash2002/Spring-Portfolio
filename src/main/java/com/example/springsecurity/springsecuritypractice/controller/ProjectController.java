package com.example.springsecurity.springsecuritypractice.controller;

import com.example.springsecurity.springsecuritypractice.model.Contact;
import com.example.springsecurity.springsecuritypractice.model.Project;
import com.example.springsecurity.springsecuritypractice.service.EmailService;
import com.example.springsecurity.springsecuritypractice.service.ProjectService;
import com.example.springsecurity.springsecuritypractice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ProjectController {
    

    @Autowired
    private ProjectService service;


    @Autowired
    private EmailService emailService;


    @RequestMapping("contact")
    public String contact(@ModelAttribute("contact") Contact contact) {
        emailService.sendEmail(contact);
        return "redirect:/index";
    }

    @RequestMapping({"index", ""})
    public String index(Model model) {
        List<Project> project = service.getAllProjects();
        model.addAttribute("project", project);
        return "index";
    }
}
