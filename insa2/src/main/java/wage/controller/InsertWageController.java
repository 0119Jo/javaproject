package wage.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import wage.model.wage_statement_DAOInter;

@Controller
public class InsertWageController {
	
	@Autowired
	private wage_statement_DAOInter daointer;
	
	@RequestMapping(value = "insertWage", method = RequestMethod.GET)
	public String insertWage() {
		return "insertwageform";
	}
	
	@RequestMapping(value = "insertWage", method = RequestMethod.POST)
	public ModelAndView submitWage(@ModelAttribute("wage_statement_Bean") wage_statement_Bean wsbean) {
		boolean b = daointer.insertWage(wsbean);
		if(b) {
			ModelAndView andView = new ModelAndView("redirect:/wagelist");
			return andView;
			
		}else{
			return new ModelAndView("redirect:/error");
		}
		
	}
}
