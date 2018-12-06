package com.cg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.bean.Status;
import com.cg.service.IStatusService;


@Controller
public class StatusCtrl {
	@Autowired
	IStatusService statusService;

	public IStatusService getStatusService() {
		return statusService;
	}

	public void setStatusService(IStatusService statusService) {
		this.statusService = statusService;
	}

	@RequestMapping(value="/add",method = RequestMethod.POST)
	public ModelAndView addDetails(@RequestParam("userName")String userName,@RequestParam("password")String password)
	{
		Status status=new Status();
		status.setUserName(userName);
		status.setPassword(password);
		System.out.println("enter in controller");
		statusService.save(status);
		ModelAndView model=new ModelAndView("add");
	
		return model;
	}

}
