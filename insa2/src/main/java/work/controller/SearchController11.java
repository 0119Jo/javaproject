package work.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import work.model.WorkDto;
import work.model.SearchDaoInter;

@Controller
public class SearchController11 {
	@Autowired
	private SearchDaoInter inter;
	
	@RequestMapping("work")
	public ModelAndView searchProcess(EmpBean bean) {
		ArrayList<WorkDto> list = (ArrayList<WorkDto>) inter.getSearch(bean);
		
		ModelAndView view = new ModelAndView("work", "data", list);
		view.addObject("page", "1");
		return view;
	}
}
