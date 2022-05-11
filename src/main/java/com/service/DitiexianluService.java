package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DitiexianluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DitiexianluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DitiexianluView;


/**
 * 地铁线路
 *
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public interface DitiexianluService extends IService<DitiexianluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DitiexianluVO> selectListVO(Wrapper<DitiexianluEntity> wrapper);
   	
   	DitiexianluVO selectVO(@Param("ew") Wrapper<DitiexianluEntity> wrapper);
   	
   	List<DitiexianluView> selectListView(Wrapper<DitiexianluEntity> wrapper);
   	
   	DitiexianluView selectView(@Param("ew") Wrapper<DitiexianluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DitiexianluEntity> wrapper);
   	

}

