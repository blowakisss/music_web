package com.xx.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xx.bean.Milktea;
import com.xx.dao.MilkteaDao;

@Controller
public class MilkteaControl {
	
	
	@Resource
	MilkteaDao milkteaDao;
	//请求路径映射
	@RequestMapping("show")
	//接收客户端的请求，然后调用dao层业务逻辑，获取到数据，传递数据给视图层（客户端）用于视觉呈现。调用dao层中的增删改查的方法，而dao层提供只是接口
	public String show(Model model){
		model.addAttribute("list",milkteaDao.show());//jdbc  se  sql
		return "show";
	}
	
	@RequestMapping("add")
	public String add(Milktea milktea){
		milkteaDao.add(milktea);
		return "redirect:/show.do";
	}
	
	@RequestMapping("showById")
	public String showById(int id, Model model){
		model.addAttribute("milktea", milkteaDao.showById(id));
		return "set";
	}
	
	@RequestMapping("set")
	public String set(Milktea milktea){
		milkteaDao.set(milktea);
		return "redirect:/show.do";
	}
	
	@RequestMapping("remove")
	public String remove(HttpServletRequest request){
		String [] id = request.getParameterValues("id");
		for (int i = 0; i < id.length; i++) {
			milkteaDao.remove(Integer.valueOf(id[i]));
		}	
		return "redirect:/show.do";
	}
	         
}
