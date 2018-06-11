package com.nas.ssm.staff.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nas.ssm.commons.beans.Staff;
import com.nas.ssm.commons.vo.Page;
import com.nas.ssm.commons.constant.Constants;
import com.nas.ssm.staff.dao.IStaffDao;
import com.nas.ssm.staff.service.IStaffService;

@Service
public class StaffServiceImpl implements IStaffService {
	
	@Autowired
	private IStaffDao dao;

	@Override
	public void addStaff(Staff staff) {
		dao.addStaff(staff);
	}

	@Transactional(readOnly=true,rollbackFor=Exception.class)
	@Override
	public Page<Staff> findAllStaff(int pageno) {
		//初始化当前页码和页面大小
		Page<Staff> page = new Page<>(pageno, Constants.PAGE_SIZE);
		 //查询总记录数
	    long totalRows = dao.selectAllRows() ;
	    page.setTotalRows(totalRows);
	        
	    //查询当前页面所包含详情
	    int pageStartIndex = page.getPageStartIndex() ;
	    int pageSize = page.getPageSize() ;
	    Map<String,Object> map = new HashMap<>() ;
	    map.put("pageStartIndex", pageStartIndex) ;
	    map.put("pageSize", pageSize) ;
	        
	    List<Staff> datas = dao.selectCurrentPageStaff(map);
	    page.setDatas(datas);  
	    
	    return page;
	}

	@Override
	public void delStaffById(int id) {
		dao.delById(id);
		
	}
	
}
