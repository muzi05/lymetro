package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 时刻表
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
@TableName("shikebiao")
public class ShikebiaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShikebiaoEntity() {
		
	}
	
	public ShikebiaoEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 站点
	 */
					
	private String zhandian;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：站点
	 */
	public void setZhandian(String zhandian) {
		this.zhandian = zhandian;
	}
	/**
	 * 获取：站点
	 */
	public String getZhandian() {
		return zhandian;
	}
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
