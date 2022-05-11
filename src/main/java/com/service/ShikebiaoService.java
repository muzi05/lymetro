package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShikebiaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShikebiaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShikebiaoView;


/**
 * 时刻表
 *
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public interface ShikebiaoService extends IService<ShikebiaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShikebiaoVO> selectListVO(Wrapper<ShikebiaoEntity> wrapper);
   	
   	ShikebiaoVO selectVO(@Param("ew") Wrapper<ShikebiaoEntity> wrapper);
   	
   	List<ShikebiaoView> selectListView(Wrapper<ShikebiaoEntity> wrapper);
   	
   	ShikebiaoView selectView(@Param("ew") Wrapper<ShikebiaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShikebiaoEntity> wrapper);
   	

}

