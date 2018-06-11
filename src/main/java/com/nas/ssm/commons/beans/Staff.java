package com.nas.ssm.commons.beans;

public class Staff {
	private Integer id;		// 员工编号
	private String name;	// 姓名
	private String sex;		// 性别
	private String gw;		// 岗位
	private String phone;	// 手机号码
	private String zt;		// 状态
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getGw() {
		return gw;
	}
	public void setGw(String gw) {
		this.gw = gw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZt() {
		return zt;
	}
	public void setZt(String zt) {
		this.zt = zt;
	}
	
	@Override
	public String toString() {
		return "Staff [id=" + id + ", name=" + name + ", sex=" + sex + ", gw=" + gw + ", phone=" + phone + ", zt=" + zt
				+ "]";
	}
	
}
