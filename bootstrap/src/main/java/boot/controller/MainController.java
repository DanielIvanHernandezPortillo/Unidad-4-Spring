package boot.controller;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.service.AddressService;
import boot.service.TaskService;
import boot.service.TeamService;


@Controller
public class MainController { 
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private TeamService teamService;
	
	@Autowired
	private AddressService addressService;
	
	
	
	@GetMapping("/")
	public String home(HttpServletRequest request){ 
		request.setAttribute("mode","MODE_HOME");
		return "index";
	}
}
	
	
	