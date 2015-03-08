package org.ayfaar.app.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public class WikiSearchController {



    @RequestMapping("/search")
    public void search(@RequestParam("q") String query) {

    }
}
