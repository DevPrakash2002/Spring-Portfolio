package com.example.springsecurity.springsecuritypractice.Repository;

import com.example.springsecurity.springsecuritypractice.model.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectRepo extends JpaRepository<Project, Integer> {
}
