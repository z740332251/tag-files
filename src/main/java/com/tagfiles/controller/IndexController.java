package com.tagfiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhangzhe03
 */
@Controller
public class IndexController {
    @RequestMapping("/a")
    public String index(Model model) {
        model.addAttribute("data","SpringBoot 前端使用JSP页面！");
        return "index";
    }
}
