package com.tour_leave.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tour_leave.service.ProductService;
import com.tour_leave.vo.ProductVO;

@Controller
public class ProductsController {

	@Autowired
	ProductService productService;
	
	@GetMapping("/products/detail")
	public String getDetail(@RequestParam Integer prod_seq, Model model ) {
		
		ProductVO product = productService.selectProductBySeq(prod_seq);
		
		model.addAttribute("product",product);
		
		return "/products/detail";
	}
}
