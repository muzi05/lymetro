package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhandianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhandianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhandianView;


/**
 * 站点
 *
 * @author 
 * @email 
 * @date 2022-03-24 18:12:20
 */
public interface ZhandianService extends IService<ZhandianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhandianVO> selectListVO(Wrapper<ZhandianEntity> wrapper);
   	
   	ZhandianVO selectVO(@Param("ew") Wrapper<ZhandianEntity> wrapper);
   	
   	List<ZhandianView> selectListView(Wrapper<ZhandianEntity> wrapper);
   	
   	ZhandianView selectView(@Param("ew") Wrapper<ZhandianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhandianEntity> wrapper);
   	

}

