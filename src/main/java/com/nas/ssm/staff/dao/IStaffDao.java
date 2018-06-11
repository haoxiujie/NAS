package com.nas.ssm.staff.dao;

import java.util.List;
import java.util.Map;

import com.nas.ssm.commons.beans.Staff;

public interface IStaffDao {

	void addStaff(Staff staff);

	long selectAllRows();

	List<Staff> selectCurrentPageStaff(Map<String, Object> map);

	void delById(int id);


}
