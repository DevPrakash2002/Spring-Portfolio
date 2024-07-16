package com.example.springsecurity.springsecuritypractice.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="PortfolioProjects")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)

    private int id;

    private String title;
    private String imgLink;
    private String description;
    private String sourceLink;
    private String startedDate;

}
