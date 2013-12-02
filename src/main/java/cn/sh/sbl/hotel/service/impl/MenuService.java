package cn.sh.sbl.hotel.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sh.sbl.hotel.beans.Menu;
import cn.sh.sbl.hotel.beans.MenuExample;
import cn.sh.sbl.hotel.dao.MenuMapper;
import cn.sh.sbl.hotel.service.IMenuService;

/**
 * @author lufeng 
 * @E-mail: cxxwode@163.com
 * @version 1.0 
 * @date 2013年11月23日10:56:02
 * @description TODO
 */

@Service
public class MenuService implements IMenuService {

	@Autowired
	private Logger logger;
	@Autowired
	private MenuMapper menuMapper;
	
	/**
	 * @see IMenuService#findAll()
	 */
	public List<Menu> findAll() {
		return this.menuMapper.selectByExample(null);
	}

	/**
	 * @see IMenuService#get(int)
	 */
	public Menu get(int id) {
		return this.menuMapper.selectByPrimaryKey(id);
	}
	
	/**
	 * @see IMenuService#getChildrenById(int)
	 */
	public List<Menu> getChildrenById(int id){
		MenuExample example = new MenuExample();
		example.createCriteria().andParentEqualTo(id)
			.andValidEqualTo(true);
		example.setOrderByClause("display_order");
		return menuMapper.selectByExample(example);
	}
	
	public void save(Menu menu) {
		logger.debug("insert {} into Menu", menu.getName());
		menuMapper.insert(menu);
		Menu parentMenu = menuMapper.selectByPrimaryKey(menu.getParent());
		if(!parentMenu.getHasChild())  {
			parentMenu.setHasChild(true);
			menuMapper.updateByPrimaryKey(parentMenu);
		}
	}
	
	/**
	 * @see IMenuService#deleteMenu(Menu)
	 */
	public void deleteMenu(Menu menu) {
		
		menuMapper.deleteByPrimaryKey(menu.getId());
		
		MenuExample menuExample = new MenuExample();
		menuExample.createCriteria()
			.andParentEqualTo(menu.getParent())
			.andIdNotEqualTo(menu.getId())
			.andValidEqualTo(true);
		List<Menu> sameLevelMenu = menuMapper.selectByExample(menuExample);
		
		if(sameLevelMenu.size() < 1) {
			Menu pMenu = menuMapper.selectByPrimaryKey(menu.getParent());
			pMenu.setHasChild(false);
			menuMapper.updateByPrimaryKey(pMenu);
		}
		
	}
	
	/**
	 * @see IMenuService#rename(Menu)
	 */
	public void rename(Menu menu) {
		logger.debug("new Name: {}", menu.getName());
		this.menuMapper.updateByPrimaryKey(menu);
	}
}
