package com.tour_leave.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tour_leave.mapper.ProductMapper;
import com.tour_leave.vo.ProductVO;
import com.tour_leave.vo.SimpleProductVO;

@Service
public class ProductService {
	@Autowired
	ProductMapper mapper;
	
	public List<SimpleProductVO> selectProducts() {
		List<Integer> seqList = mapper.selectProductSeqList(4);
		List<SimpleProductVO> productList = new ArrayList<SimpleProductVO>();
		for(int i=0; i<seqList.size(); i++) {
			Integer seq = seqList.get(i);
			SimpleProductVO product = mapper.selectProduct(seq);
		
			productList.add(product);
		}
		return productList;
	}
	
	public ProductVO selectProductBySeq(Integer seq) {
		ProductVO product = mapper.selectProductBySeq(seq);
		
		return product;
		
	}
	
	public List<SimpleProductVO> selectSpecialSeqlist() {
		List<Integer> seqList = mapper.selectSpecialSeqlist();
		List<SimpleProductVO> productList = new ArrayList<SimpleProductVO>();
		
		for(int i=0; i<seqList.size(); i++) {
			Integer seq = seqList.get(i);
			SimpleProductVO product = mapper.selectProduct(seq);
		
			productList.add(product);
		}
		
		return productList;
	}
	
	public List<SimpleProductVO> selectMDSeqlist() {
		List<Integer> seqList = mapper.selectMDSeqlist();
		List<SimpleProductVO> productList = new ArrayList<SimpleProductVO>();
		
		for(int i=0; i<seqList.size(); i++) {
			Integer seq = seqList.get(i);
			SimpleProductVO product = mapper.selectProduct(seq);
		
			productList.add(product);
		}
		
		return productList;
	}
	
	public List<SimpleProductVO> selectBestSeqlist() {
		List<Integer> seqList = mapper.selectBestSeqlist();
		List<SimpleProductVO> productList = new ArrayList<SimpleProductVO>();
		
		for(int i=0; i<seqList.size(); i++) {
			Integer seq = seqList.get(i);
			SimpleProductVO product = mapper.selectProduct(seq);
		
			productList.add(product);
		}
		
		return productList;
	}
}
