package com.cg.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.bean.Status;
import com.cg.dao.IStatusDao;
@Service("statusService")
public class StatusService implements IStatusService{
	@Autowired
	IStatusDao statusDao;
	


	public IStatusDao getStatusDao() {
		return statusDao;
	}



	public void setStatusDao(IStatusDao statusDao) {
		this.statusDao = statusDao;
	}



	@Override
	public void save(Status status) {
		statusDao.save(status);
		
	}

}
