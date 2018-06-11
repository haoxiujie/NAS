package com.nas.ssm.user.service.impl;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nas.ssm.commons.beans.User;
import com.nas.ssm.commons.constant.Constants;
import com.nas.ssm.commons.vo.Page;
import com.nas.ssm.user.dao.IUserDao;
import com.nas.ssm.user.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao dao ;
	
	@Override
	public void addUser(User user) {
		dao.addUser(user);
	}

	@Transactional(readOnly=true,rollbackFor=Exception.class)
	@Override
	public Page<User> findAllUser(int pageno) {
		
		//��ʼ����ǰҳ���ҳ���С
		Page<User>  page = new Page<>(pageno,Constants.PAGE_SIZE);
				
		//��ѯ�ܼ�¼��
		long totalRows = dao.selectAllRows() ;
		page.setTotalRows(totalRows);
				
		//��ѯ��ǰҳ������������
		int pageStartIndex = page.getPageStartIndex() ;
		int pageSize = page.getPageSize() ;
		
		Map<String,Object> map = new HashMap<>() ;
		map.put("pageStartIndex", pageStartIndex) ;
		map.put("pageSize", pageSize) ;
				
				
				
		List<User> datas = dao.selectCurrentPageColumn(map) ;
		page.setDatas(datas);	
		
		return page;
	}

	@Override
	public void deleteUser(int id) {
		dao.deleteById(id) ;
		
	}


}
