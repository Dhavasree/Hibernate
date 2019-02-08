package com.cg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.bean.Employee;
import com.cg.repository.EmployeeRepository;
@Component
public class EmployeeServiceImpl implements IEmployeeService{

	@Autowired
	private EmployeeRepository empRepo;
	
	
	public EmployeeRepository getEmpRepo() {
		return empRepo;
	}


	public void setEmpRepo(EmployeeRepository empRepo) {
		this.empRepo = empRepo;
	}


	@Override
	public Employee save(Employee employee) {
	System.out.println("in service");
		return empRepo.save(employee);
	}


	@Override
	public List<Employee> findall() {
		System.out.println("in find all");
		return empRepo.findAll();
	}

}
