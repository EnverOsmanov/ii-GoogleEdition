package org.ayfaar.app.controllers;

import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;
import java.util.Map;


public class HelloController {
    public static final int DEFAULT = 25;
    private SpitterService spitterService;

    @Inject
    public HelloController(SpitterService spitterService) {
        this.spitterService = spitterService;
    }

    @RequestMapping({"/", "/home"})
    public String showHomePage(Map<String, Object> model) {
        System.out.println("showHomePage method says Hello");
        model.put("spittles", spitterService.getRecentSpittles(
                                                                DEFAULT));

        return "/";
    }
}


