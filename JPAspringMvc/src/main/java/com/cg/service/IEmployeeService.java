package com.cg.service;

import java.util.List;

import com.cg.bean.Employee;

public interface IEmployeeService {
 public Employee save(Employee employee);

public List<Employee> findall();

}
