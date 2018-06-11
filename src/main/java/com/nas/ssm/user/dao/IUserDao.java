package com.nas.ssm.user.dao;

import java.util.List;
import java.util.Map;

import com.nas.ssm.commons.beans.User;

public interface IUserDao {

	void addUser(User user);

	long selectAllRows();

	List<User> selectCurrentPageColumn(Map<String, Object> map);

	void deleteById(int id);

}
