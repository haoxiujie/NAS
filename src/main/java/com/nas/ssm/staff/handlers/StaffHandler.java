package com.nas.ssm.staff.handlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nas.ssm.commons.beans.Staff;
import com.nas.ssm.commons.vo.Page;
import com.nas.ssm.staff.service.IStaffService;





@Controller
@RequestMapping("/staff")
public class StaffHandler {
	
	@Autowired
	private IStaffService service;	// service层接口名
	
	@RequestMapping("/add.do")
	public String addStaffHandle(Staff staff) {
		service.addStaff(staff);
		System.out.println(staff);
		return "/add_Staff.jsp";
	}
	
	@RequestMapping("/find.do")
	public String cxStaffHandle(int pageno, Model model) {
		Page<Staff> page = service.findAllStaff(pageno);
		model.addAttribute("staff", page);
		System.out.println(page+"123321");
		return "/staff_List.jsp";
	}
	
	@RequestMapping("/del.do")
	public String delStaffHandle(int id) {
		service.delStaffById(id);
		return "find.do?pageno=1";
	}
}
