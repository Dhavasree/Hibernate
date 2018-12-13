package com.cg.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cg.bean.CustomerBean;

public class CustomerDao {

	 JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	 public CustomerBean add(CustomerBean cust)
	 {
		 System.out.println("in dao");
		 String sql="insert into customer(name,id) values('"+cust.getName()+"','"+cust.getId()+"')";    
		   template.update(sql); 
		 return cust;
	 }
	 public List<CustomerBean> getCustomer()
	 {
		 return template.query("select * from customer",new RowMapper<CustomerBean>(){    
		        public CustomerBean mapRow(ResultSet rs, int row) throws SQLException {    
		        	CustomerBean e=new CustomerBean();    
		            e.setName(rs.getString(1));   
		            e.setId(rs.getInt(2));     
		            return e;    
		        }    
		    });    
		
		 
	 }
}
