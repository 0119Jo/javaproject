package insa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import insa.model.EmpDto;
import insa.model.EmpInter;

@Controller
public class SearchController {
	@Autowired
	private EmpInter empInter;
	
	@RequestMapping(value="search", method=RequestMethod.GET)
	public ModelAndView searchProcess(EmpBean bean) {
		
		List<EmpDto> list = empInter.search(bean);
		
		return new ModelAndView("insa_list","data",list);
	}
}
