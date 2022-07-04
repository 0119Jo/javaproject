package work.model;

import java.util.List;

import work.controller.EmpBean;

public interface SearchDaoInter {
	
	List<WorkDto> getSearch(EmpBean bean);
	
	
}
