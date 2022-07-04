package pack.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pack.login.model.LoginDao;
import pack.login.model.LoginDto;

@Controller
public class LoginController {
	@Autowired
	private LoginDao dao;
	
	@RequestMapping("login")
	public String login(HttpSession session,
						@RequestParam("emp_no") String emp_no,
						@RequestParam("empInfo_pass")String empInfo_pass) {
		System.out.println("받아온 사번 : "+emp_no+", 받아온 비밀번호 :" + empInfo_pass);
		
		LoginDto dto = dao.LoginInfo(emp_no);
		System.out.println("dao에서 넘겨받은 dto"+ dto);
		
		if(dto != null) { 
			String get_emp_no = dto.getEmp_no();
			String get_empInfo_pass = dto.getEmpInfo_pass();
			
			System.out.println("DB에서 불러온 사번 : "+get_emp_no);
			System.out.println("DB에서 불러온 비밀번호 : "+get_empInfo_pass);
			
			if(emp_no.equals(get_emp_no) && empInfo_pass.equals(get_empInfo_pass)) {
				session.setAttribute("emp_no", get_emp_no);
			}
		}else {
			return "login";
		} 
	return "index";
	}
}
