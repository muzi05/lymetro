package com.dao;

import com.entity.DitiexianluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DitiexianluVO;
import com.entity.view.DitiexianluView;


/**
 * 地铁线路
 * 
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public interface DitiexianluDao extends BaseMapper<DitiexianluEntity> {
	
	List<DitiexianluVO> selectListVO(@Param("ew") Wrapper<DitiexianluEntity> wrapper);
	
	DitiexianluVO selectVO(@Param("ew") Wrapper<DitiexianluEntity> wrapper);
	
	List<DitiexianluView> selectListView(@Param("ew") Wrapper<DitiexianluEntity> wrapper);

	List<DitiexianluView> selectListView(Pagination page,@Param("ew") Wrapper<DitiexianluEntity> wrapper);
	
	DitiexianluView selectView(@Param("ew") Wrapper<DitiexianluEntity> wrapper);
	

}
