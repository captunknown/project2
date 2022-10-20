package com.ian.project.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ian.project.models.Doot;
import com.ian.project.models.LoginUser;
import com.ian.project.models.User;
import com.ian.project.services.DootService;
import com.ian.project.services.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userServ;
	@Autowired
	private DootService dootServ;
	
	@GetMapping("/")
	public String index(Model model) {
	    model.addAttribute("newUser", new User());
	    model.addAttribute("newLogin", new LoginUser());
	    return "login.jsp";
	    
	}
	 
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
	     
		User user = userServ.register(newUser, result);
		
	    if(result.hasErrors()) {
	        model.addAttribute("newLogin", new LoginUser());
	        return "login.jsp";
	    }
	    
	    session.setAttribute("userId", user.getId());
	 
	    return "redirect:/home";
	}
	 
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
	     
		User user = userServ.login(newLogin, result);
	 
	    if(result.hasErrors() || user==null) {
	        model.addAttribute("newUser", new User());
	        return "login.jsp";
	    }
	     
	    session.setAttribute("userId", user.getId());
	 
	    return "redirect:/home";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	 
		session.setAttribute("userId", null);
	     
	    return "redirect:/";
	}
	
	@GetMapping("/home")
	public String welcome(Model model,HttpSession session) {
		
		List<Doot> doots = dootServ.allDoot();
		model.addAttribute("doot", doots);
		
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		Long userId = (Long) session.getAttribute("userId");
		model.addAttribute("user", userServ.findById(userId));
		
	    return "view.jsp";
	    
	    
	}
	
	@GetMapping("/posts/new")
	public String newDoot(@ModelAttribute("newDoot") Doot doot, Model model, HttpSession session) {

		return "addDoot.jsp";
	}

	
	@PostMapping("/posts/new")
	public String createDoot(@Valid @ModelAttribute("newDoot") Doot doot, BindingResult result,Model model) {
		if(result.hasErrors()) {
			Doot doots = new Doot();
			model.addAttribute("doot", doots);
			return "addDoot.jsp";
		}else {
			dootServ.createDoot(doot);
			return "redirect:/home";
		}
	}
	
	
	
}
