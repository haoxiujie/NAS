package com.nas.ssm.staff.service;

import com.nas.ssm.commons.beans.Staff;
import com.nas.ssm.commons.vo.Page;

public interface IStaffService {

	void addStaff(Staff staff);

	Page<Staff> findAllStaff(int pageno);

	void delStaffById(int id);

}
