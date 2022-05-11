package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShikebiaoDao;
import com.entity.ShikebiaoEntity;
import com.service.ShikebiaoService;
import com.entity.vo.ShikebiaoVO;
import com.entity.view.ShikebiaoView;

@Service("shikebiaoService")
public class ShikebiaoServiceImpl extends ServiceImpl<ShikebiaoDao, ShikebiaoEntity> implements ShikebiaoService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShikebiaoEntity> page = this.selectPage(
                new Query<ShikebiaoEntity>(params).getPage(),
                new EntityWrapper<ShikebiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShikebiaoEntity> wrapper) {
		  Page<ShikebiaoView> page =new Query<ShikebiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShikebiaoVO> selectListVO(Wrapper<ShikebiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShikebiaoVO selectVO(Wrapper<ShikebiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShikebiaoView> selectListView(Wrapper<ShikebiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShikebiaoView selectView(Wrapper<ShikebiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
