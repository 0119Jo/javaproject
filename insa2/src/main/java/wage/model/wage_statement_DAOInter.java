package wage.model;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import wage.controller.wage_statement_Bean;

public interface wage_statement_DAOInter {
	List<wage_statement_DTO> getWageAll();
	wage_statement_DTO getMyWage(wage_statement_Bean wsbean);
	List<wage_statement_DTO> getWageByBuserName(String buser_name);
	boolean insertWage(wage_statement_Bean wsbean);
}
