package wage.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import wage.model.wage_statement_DAOInter;
import wage.model.wage_statement_DTO;

@Controller
public class SearchMyWageController {
	@Autowired
	private wage_statement_DAOInter daointer;
	
	@RequestMapping(value = "salstatement", method = RequestMethod.GET)
	public String searchMyWageState() {
		return "salstatement";
	}
	
	
	@RequestMapping(value = "salstatement", method = RequestMethod.POST)
	public ModelAndView searchMyWage(@ModelAttribute("wsbean") wage_statement_Bean wsbean) {
		wage_statement_DTO mywage = daointer.getMyWage(wsbean);
		return new ModelAndView("salstatement","mywage", mywage);
	}
}
