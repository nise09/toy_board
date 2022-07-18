package com.tour_leave.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tour_leave.vo.ProductVO;
import com.tour_leave.vo.SimpleProductVO;

@Mapper
public interface ProductMapper {

	
	public List<Integer> selectProductSeqList(Integer limit);
	public SimpleProductVO selectProduct(Integer seq); 
	
	public List<Integer> selectBestSeqlist();
	
	public ProductVO selectProductBySeq(Integer seq);
	
	public List<Integer> selectSpecialSeqlist();
	public List<Integer> selectMDSeqlist();

}
