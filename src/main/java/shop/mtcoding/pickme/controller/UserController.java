package shop.mtcoding.pickme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/loginForm")
    public String loginForm() {
        return "/user/loginForm";
    }

    @GetMapping("/")
    public String main() {
        return "/user/main";
    }

    @GetMapping("/userJoinForm")
    public String userJoinForm() {
        return "/user/userJoinForm";
    }
}
