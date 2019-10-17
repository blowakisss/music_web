package com.xx.dao;

import java.util.List;

import com.xx.bean.Milktea;

public interface MilkteaDao {

	public List<Milktea> show();//调用dao层中的增删改查的方法，而dao层提供只是接口，mapper包下的与接口对应的xml文件会被加载，执行sql语句
	public void add(Milktea milktea);

	public Milktea showById(int id);

	public void set(Milktea milktea);

	public void remove(int id);

}
