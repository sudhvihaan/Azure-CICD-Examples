package com.springdemo.helloworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @GetMapping("/")
    public String helloWorld() {
        return "Hello Sudhakar you have successfully created the CICD pipeline";
    }

    @RequestMapping("/message1")
    public String msg1(){
        return "This is message 1: Dont Stop Learning";
    }

    @RequestMapping("/message2")
    public String msg2(){
        return "This is message 2: Dream Big";
    }

    @RequestMapping("/message3")
    public String msg3(){
        return "This is message 3: This World is for all";
    }

    @RequestMapping("/message4")
    public String msg4(){
        return "This is message 4: World is a mirror : spread love and care";
    }



}
