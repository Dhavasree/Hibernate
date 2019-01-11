package com.cg.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import com.cg.bean.Employee;
@Repository
@Component("dao") 
public class EmployeeDao {
	JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public List<Employee> find() {
		 return template.query("select * from employee",new RowMapper<Employee>(){    
		        public Employee mapRow(ResultSet rs, int row) throws SQLException {    
		        	Employee e=new Employee();    
		            e.setName(rs.getString(1));   
		            e.setId(rs.getInt(2));  
		            System.out.println("dao "+e.getName());
		            return e;    
		        }    
		    });    
		
	}

	public Employee add(Employee employee) {
		String sql="insert into employee(name,id) values('"+employee.getName()+"','"+employee.getId()+"')";    
		   template.update(sql); 
		return employee;
	}

	public Employee delete(Employee employee) {
		String sql="delete from employee where name='"+employee.getName()+"' ";
		template.update(sql);
		return employee;
	}
}