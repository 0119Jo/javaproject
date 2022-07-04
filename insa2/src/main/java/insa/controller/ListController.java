package insa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import insa.model.EmpInter;

@Controller
public class ListController {
	
	@Autowired
	private EmpInter empInter;
	
	@RequestMapping("insa_list")
	public Model process(Model model) {
		model.addAttribute("data", empInter.list());
		System.out.println("data : "+empInter.list());
		return model;
	}
}
