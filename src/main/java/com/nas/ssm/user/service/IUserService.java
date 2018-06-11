package com.nas.ssm.user.service;

import com.nas.ssm.commons.beans.User;
import com.nas.ssm.commons.vo.Page;

public interface IUserService {

	void addUser(User user);

	Page<User> findAllUser(int pageno);

	void deleteUser(int id);

	

}
