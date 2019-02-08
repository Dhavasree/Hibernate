package com.cg.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.bean.Employee;
import com.cg.service.IEmployeeService;
@Controller
public class EmployeeCtrl {
	@Autowired
	IEmployeeService empService;
	
	public IEmployeeService getEmpService() {
		return empService;
	}

	public void setEmpService(IEmployeeService empService) {
		this.empService = empService;
	}

	@RequestMapping(value="/add",method = RequestMethod.POST)
	public ModelAndView addDetails(@RequestParam("name")String name,@RequestParam("id")int id)
	{ModelAndView model=new ModelAndView("add");
	System.out.println("in controller");
		Employee employee=new Employee();
		employee.setName(name);
		employee.setId(id);
Employee e=empService.save(employee);
System.out.println(e.getName());

model.addObject("emp",empService.findall());
		return model;
	}
}
