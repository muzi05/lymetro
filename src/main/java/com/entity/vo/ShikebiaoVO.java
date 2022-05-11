package com.entity.vo;

import com.entity.ShikebiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 时刻表
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public class ShikebiaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 首班车
	 */
	
	private String shoubanche;
		
	/**
	 * 末班车
	 */
	
	private String mobanche;
		
	/**
	 * 间隔时间
	 */
	
	private String jiangeshijian;
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：首班车
	 */
	 
	public void setShoubanche(String shoubanche) {
		this.shoubanche = shoubanche;
	}
	
	/**
	 * 获取：首班车
	 */
	public String getShoubanche() {
		return shoubanche;
	}
				
	
	/**
	 * 设置：末班车
	 */
	 
	public void setMobanche(String mobanche) {
		this.mobanche = mobanche;
	}
	
	/**
	 * 获取：末班车
	 */
	public String getMobanche() {
		return mobanche;
	}
				
	
	/**
	 * 设置：间隔时间
	 */
	 
	public void setJiangeshijian(String jiangeshijian) {
		this.jiangeshijian = jiangeshijian;
	}
	
	/**
	 * 获取：间隔时间
	 */
	public String getJiangeshijian() {
		return jiangeshijian;
	}
			
}
