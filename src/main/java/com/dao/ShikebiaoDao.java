package com.dao;

import com.entity.ShikebiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShikebiaoVO;
import com.entity.view.ShikebiaoView;


/**
 * 时刻表
 * 
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public interface ShikebiaoDao extends BaseMapper<ShikebiaoEntity> {
	
	List<ShikebiaoVO> selectListVO(@Param("ew") Wrapper<ShikebiaoEntity> wrapper);
	
	ShikebiaoVO selectVO(@Param("ew") Wrapper<ShikebiaoEntity> wrapper);
	
	List<ShikebiaoView> selectListView(@Param("ew") Wrapper<ShikebiaoEntity> wrapper);

	List<ShikebiaoView> selectListView(Pagination page,@Param("ew") Wrapper<ShikebiaoEntity> wrapper);
	
	ShikebiaoView selectView(@Param("ew") Wrapper<ShikebiaoEntity> wrapper);
	

}
