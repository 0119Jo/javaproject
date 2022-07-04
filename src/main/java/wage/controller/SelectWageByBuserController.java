package wage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import wage.model.wage_statement_DAOInter;

@Controller
public class SelectWageByBuserController {
	
	@Autowired
	private wage_statement_DAOInter daointer;
	
	@RequestMapping("#tab-2")
	public ModelAndView selectWageAll() {
		return new ModelAndView("wagelist", "listbybuser",daointer.getWageAll());
	}
}
