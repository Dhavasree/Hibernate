package com.cg.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;





import org.springframework.web.bind.annotation.ResponseBody;

import com.cg.bean.CustomerBean;
import com.cg.dao.CustomerDao;

@Controller
public class CustCtrl {
	@Autowired
	CustomerDao dao;
	@RequestMapping("/add")
	public String addDetails(@RequestParam("name") String name,@RequestParam("id") Integer id,CustomerBean cust)
	{
		System.out.println("in ctrl");
		System.out.println(cust.getName());
		CustomerBean b=dao.add(cust);
		System.out.println("name "+ b.getName());
		return "redirect:/viewcust";
	}
	@RequestMapping("/viewcust")
	
	 public String viewemp(Model m){    
	        List<CustomerBean> list=dao.getCustomer();  
	        m.addAttribute("list",list);  
	        return "source";  
	}
	@RequestMapping("/list")
	public String add(@ModelAttribute("list")CustomerBean bean )
	{
		System.out.println("In list");
		System.out.println("Name "+bean.getName());
		return null;
	}
	
}
