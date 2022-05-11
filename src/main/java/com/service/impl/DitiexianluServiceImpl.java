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


import com.dao.DitiexianluDao;
import com.entity.DitiexianluEntity;
import com.service.DitiexianluService;
import com.entity.vo.DitiexianluVO;
import com.entity.view.DitiexianluView;

@Service("ditiexianluService")
public class DitiexianluServiceImpl extends ServiceImpl<DitiexianluDao, DitiexianluEntity> implements DitiexianluService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DitiexianluEntity> page = this.selectPage(
                new Query<DitiexianluEntity>(params).getPage(),
                new EntityWrapper<DitiexianluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DitiexianluEntity> wrapper) {
		  Page<DitiexianluView> page =new Query<DitiexianluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DitiexianluVO> selectListVO(Wrapper<DitiexianluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DitiexianluVO selectVO(Wrapper<DitiexianluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DitiexianluView> selectListView(Wrapper<DitiexianluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DitiexianluView selectView(Wrapper<DitiexianluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
