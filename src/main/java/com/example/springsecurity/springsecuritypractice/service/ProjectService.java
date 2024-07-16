package com.example.springsecurity.springsecuritypractice.service;

import com.example.springsecurity.springsecuritypractice.Repository.ProjectRepo;
import com.example.springsecurity.springsecuritypractice.model.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectService {
    @Autowired
    ProjectRepo repo;

    public List<Project> getAllProjects() {
        return repo.findAll();
    }

    public void addProject(Project project) {
        repo.save(project);
    }

    public void updateProject(Project project) {
        repo.save(project);
    }

    public void deleteProject(Project project) {
        repo.delete(project);
    }
}
