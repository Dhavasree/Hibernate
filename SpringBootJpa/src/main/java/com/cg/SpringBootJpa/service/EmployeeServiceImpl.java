package com.cg.SpringBootJpa.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.SpringBootJpa.bean.Employee;
import com.cg.SpringBootJpa.repository.EmpRespository;
@Component
public class EmployeeServiceImpl implements IEmployeeService{

	@Autowired
	private EmpRespository empRepo;
	
	
	public EmpRespository getEmpRepo() {
		return empRepo;
	}


	public void setEmpRepo(EmpRespository empRepo) {
		this.empRepo = empRepo;
	}


	@Override
	public Employee save(Employee employee) {
		System.out.println("in service");
		return empRepo.save(employee);
	}


	

}
