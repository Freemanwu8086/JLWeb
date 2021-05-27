package com.freemanwu.controller;

import com.freemanwu.entity.User;
import com.freemanwu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * user insert and save.
     */
    @RequestMapping("save")
    public String save(User user){
        try {
            userService.save(user);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "WelcomeAdmin";
    }


    @RequestMapping("login")
    public String login(User user, HttpSession session, HttpServletRequest request){
        User loginUser = userService.findByNameAndPassword(user);
        request.setAttribute("loginUser",loginUser);

        if (loginUser!= null){
            session.setAttribute("loginUser",user);
            return "redirect:/resume/findAll1";
        }else { //login failed.
            return "error";
        }

    }

    @RequestMapping("userSave")
    public String userSave(User user){
        try {
            userService.save(user);
            return "WelcomeUser";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @RequestMapping("userLogin")
    public String userLogin(User user, HttpSession session, HttpServletRequest request){
        User loginUser = userService.findByNameAndPassword(user);
        request.setAttribute("loginUser",loginUser);
        if (loginUser!= null){
            session.setAttribute("loginUser",user);
            return "findAllUser";
        }else { //login failed.
            return "error";
        }

    }
}
