package com.example.springsecurity.springsecuritypractice.service;

import com.example.springsecurity.springsecuritypractice.model.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    public void sendEmail(Contact contact) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo("dev.tiwary5821@gmail.com");
        message.setSubject(contact.getSubject());
        String body = contact.getMessage();
        String email = contact.getEmail();
        message.setText(
                "\nSender Mail Id: " +email +
                        "\nMail Body: "+ body);
        message.setFrom(contact.getEmail());

        mailSender.send(message);
    }

}
