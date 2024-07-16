package com.example.springsecurity.springsecuritypractice.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Contact {

    private String name;
    private String email;
    private String subject;
    private String message;


}
