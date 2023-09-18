package com.pds.controller;

import com.pds.biz.UserBiz;
import com.pds.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    private UserBiz userBiz;

    @RequestMapping("/login")
    public String userLogin(User user, Model model) {
        User u = userBiz.userLogin(user);
        if (u != null) {
            model.addAttribute("u", u);
            return "main";
        } else {
            return "login";
        }
    }

    @RequestMapping("/reg")
    public String userReg(User user) {
        boolean result = userBiz.userReg(user);
        return null;
    }

}
