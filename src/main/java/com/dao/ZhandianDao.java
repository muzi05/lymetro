package com.dao;

import com.entity.ZhandianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhandianVO;
import com.entity.view.ZhandianView;


/**
 * 站点
 * 
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public interface ZhandianDao extends BaseMapper<ZhandianEntity> {
	
	List<ZhandianVO> selectListVO(@Param("ew") Wrapper<ZhandianEntity> wrapper);
	
	ZhandianVO selectVO(@Param("ew") Wrapper<ZhandianEntity> wrapper);
	
	List<ZhandianView> selectListView(@Param("ew") Wrapper<ZhandianEntity> wrapper);

	List<ZhandianView> selectListView(Pagination page,@Param("ew") Wrapper<ZhandianEntity> wrapper);
	
	ZhandianView selectView(@Param("ew") Wrapper<ZhandianEntity> wrapper);
	

}
