package com.example.springsecurity.springsecuritypractice.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;


@Data
@Table(name = "users")
@Entity
public class User {
	
@Id

	private String username;
	private String password;
	
}
