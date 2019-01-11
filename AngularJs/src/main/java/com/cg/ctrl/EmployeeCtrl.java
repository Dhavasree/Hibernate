package com.cg.ctrl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cg.bean.Employee;
import com.cg.dao.EmployeeDao;
@RestController
public class EmployeeCtrl {
	@Autowired
	EmployeeDao dao;
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/add",consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
	public ResponseEntity  addDetails(@RequestBody Employee employee)
	{
		System.out.println("in ctrl");
	Employee e=dao.add(employee);
	System.out.println("name "+e.getName());
	
		return new ResponseEntity(HttpStatus.OK);
	}
	@RequestMapping(value="/empdetails",method=RequestMethod.GET,produces="application/json")
	public List<Employee> display()
	{
		List<Employee> list=dao.find();
		return list;
	}
	
	 @SuppressWarnings("rawtypes")
	@RequestMapping(value="/deleteuser",consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.DELETE)
	    public ResponseEntity DeleteUser(@RequestBody Employee employee)
	    {System.out.println("in delete");
	    Employee e=dao.delete(employee);
			return new ResponseEntity(HttpStatus.OK);
	    }
	    
	
}
