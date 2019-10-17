package com.xx.control;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xx.bean.Users;
import com.xx.dao.UsersDao;

@Controller
public class UsersControl {

	@Resource
	UsersDao usersDao;

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String user, String pass, HttpSession session) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("user", user);
		map.put("pass", pass);
		Users users = usersDao.login(map);
		if (users != null) {
			session.setAttribute("users", users);//session.setAttribute(“key”,value)；从session中将这个对象取出来进行一些操作,比如进行身份验证
			return "main";
		} else {
			return "login";
		}

	}

}
