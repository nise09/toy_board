package com.tour_leave.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tour_leave.mapper.ImageMapper;

@Service
public class ImageService {
	@Autowired
	ImageMapper mapper;
	
	public String selectRealImageName(String uri) {
		return mapper.selectRealImageName(uri);
	}
	

}
