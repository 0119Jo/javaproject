package insa.model;

import java.util.List;

import insa.controller.EmpBean;

public interface EmpInter {
	List<EmpDto> list() ;
	List<EmpDto> search(EmpBean bean);
	boolean insert(EmpBean bean);
}
