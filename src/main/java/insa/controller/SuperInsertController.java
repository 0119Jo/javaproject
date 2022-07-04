package insa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import insa.model.EmpDto;
import insa.model.EmpImpl;

@Controller
public class SuperInsertController {
	
	@Autowired
	private EmpImpl empImpl;
	
	@RequestMapping(value="insa_register", method=RequestMethod.GET)
	public ModelAndView editSummit() {
		ModelAndView view = new ModelAndView();
		view.setViewName("insa_register");
		return view;
	}
}
