package com.ramgop.devops.basicspring;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class Basicspring {

    @RequestMapping("/")
    public String index() {
        return "Greetings from DevOps Spring Boot!";}

}