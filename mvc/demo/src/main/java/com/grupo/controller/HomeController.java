package com.grupo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

  @GetMapping({ "/", "/hello" })
  public String hello(Model model) {
    model.addAttribute("mensaje", "¡Hola desde Spring MVC en localhost!");
    return "index"; // busca templates/index.html
  }
}
