package com.ramgop.devops.basicspring;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class Basicspring {

    @Value("${test}" )
    private String message;
    @RequestMapping("/")
    public String index() {
        return message;}

}