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


import com.dao.ZhandianDao;
import com.entity.ZhandianEntity;
import com.service.ZhandianService;
import com.entity.vo.ZhandianVO;
import com.entity.view.ZhandianView;

@Service("zhandianService")
public class ZhandianServiceImpl extends ServiceImpl<ZhandianDao, ZhandianEntity> implements ZhandianService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhandianEntity> page = this.selectPage(
                new Query<ZhandianEntity>(params).getPage(),
                new EntityWrapper<ZhandianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhandianEntity> wrapper) {
		  Page<ZhandianView> page =new Query<ZhandianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhandianVO> selectListVO(Wrapper<ZhandianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhandianVO selectVO(Wrapper<ZhandianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhandianView> selectListView(Wrapper<ZhandianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhandianView selectView(Wrapper<ZhandianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
