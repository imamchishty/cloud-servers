package com.shedhack.cloud;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @RequestMapping(value = "/ping", method = RequestMethod.GET)
    public String running() {
        return "Running";
    }

}
