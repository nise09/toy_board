package com.tour_leave.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.tour_leave.service.ProductService;
import com.tour_leave.vo.SimpleProductVO;



@Controller
public class MainController {
	
	@Autowired
	ProductService productService;

	@GetMapping("/")
	public String getMain(Model model, HttpSession session) {
		
		List<SimpleProductVO> recentProductList = productService.selectProducts();
		model.addAttribute("recentProductList",recentProductList);
		
		List<SimpleProductVO> bestProductList = productService.selectBestSeqlist();
		model.addAttribute("bestProductList",bestProductList);
		
		
		List<SimpleProductVO> specialProductList = productService.selectSpecialSeqlist();
		model.addAttribute("specialProductList",specialProductList);
		
		List<SimpleProductVO> mdProductList = productService.selectMDSeqlist();
		model.addAttribute("mdProductList",mdProductList);
		
		
		return "/main";
	}
	
	
}
