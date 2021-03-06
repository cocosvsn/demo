/**
 * Copyright  2013, samsung All Rights Reserved.
 * Project: hotel.demo Maven Webapp
 * cn.sh.sbl.hotel.service.impl.FileService.java
 * Create By: samsung
 * Create Date: 2013-11-26 上午11:00:24
 */
package cn.sh.sbl.hotel.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sh.sbl.hotel.beans.Category;
import cn.sh.sbl.hotel.beans.CategoryEnum;
import cn.sh.sbl.hotel.beans.CategoryExample;
import cn.sh.sbl.hotel.beans.File;
import cn.sh.sbl.hotel.beans.FileExample;
import cn.sh.sbl.hotel.beans.FileType;
import cn.sh.sbl.hotel.dao.CategoryMapper;
import cn.sh.sbl.hotel.dao.FileMapper;
import cn.sh.sbl.hotel.dao.FilmMapper;
import cn.sh.sbl.hotel.service.IFileService;

/**
 * @author samsung 
 * @E-mail: cxxwode@163.com
 * @version 1.0 
 * @date 2013-11-26 上午11:00:24
 * @description TODO
 */
@Service
public class FileService implements IFileService {
	
	@Autowired
	private Logger logger;
	@Autowired
	private FileMapper fileMapper;
	@Autowired
	private FilmMapper filmMapper;
	@Autowired
	private CategoryMapper categoryMapper;
	
	/**
	 * @see IFileService#findAll()
	 */
	public List<File> findAll() {
		return this.fileMapper.selectByExample(null);
	}
	
	/**
	 * @see IFileService#findFileByFilmId(String)
	 */
	public List<File> findFileByFilmId(String filmId) {
		List<File> files = new ArrayList<File>();
		FileExample fileExample = new FileExample();
		fileExample.createCriteria().andFilmIdIsNotNull()
			.andFilmIdEqualTo(filmId);
		files = this.fileMapper.selectByExample(fileExample);
		return files;
	}
	
	/**
	 * @see IFileService#deleteFileByFilmId(String)
	 */
	public void deleteFileByFilmId(String filmId){
		List<File> files = this.findFileByFilmId(filmId);
		for(File f : files) {
			fileMapper.deleteByPrimaryKey(f);
		}
	}
	
	/**
	 * @see IFileService#findPostFileByFilmId(String)
	 */
	public File findPostFileByFilmId(String filmId) {
		Category category = getFileTypeCategoryId(FileType.Poster);
		if(null != category) {
			List<File> files = findFileByFilmId(filmId);
			for (File file : files) {
				if (category.getId().equals(file.getCategoryFilm())) {
					return file;
				}
			}
		}
		return null;
	}
	
	/**
	 * @see IFileService#getFileTypeCategoryId(FileType)
	 */
	public Category getFileTypeCategoryId(FileType fileType) {
		CategoryExample example = new CategoryExample();
		example.createCriteria().andCkeyEqualTo(CategoryEnum.FileType.name())
				.andCvalEqualTo(fileType.name());
		List<Category> categories = categoryMapper.selectByExample(example);
		return categories.size() > 0 ? categories.get(0) : null;
	}
}

