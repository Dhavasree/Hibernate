package com.cg.SpringBootJpa.repository;

import org.springframework.data.repository.CrudRepository;

import com.cg.SpringBootJpa.bean.Employee;

public interface EmpRespository extends CrudRepository<Employee,Integer>{

}
